
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_flt_header {int len; } ;
struct qlcnic_flt_entry {scalar_t__ region; } ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 scalar_t__ QLCNIC_FLT_LOCATION ;
 int dev_warn (int *,char*,...) ;
 int memcpy (struct qlcnic_flt_entry*,struct qlcnic_flt_entry*,int) ;
 int memset (struct qlcnic_flt_entry*,int ,int) ;
 int qlcnic_rom_fast_read_words (struct qlcnic_adapter*,scalar_t__,scalar_t__*,int) ;
 int vfree (struct qlcnic_flt_entry*) ;
 struct qlcnic_flt_entry* vzalloc (int) ;

__attribute__((used)) static int qlcnic_get_flt_entry(struct qlcnic_adapter *adapter, u8 region,
    struct qlcnic_flt_entry *region_entry)
{
 struct qlcnic_flt_header flt_hdr;
 struct qlcnic_flt_entry *flt_entry;
 int i = 0, ret;
 u32 entry_size;

 memset(region_entry, 0, sizeof(struct qlcnic_flt_entry));
 ret = qlcnic_rom_fast_read_words(adapter, QLCNIC_FLT_LOCATION,
      (u8 *)&flt_hdr,
      sizeof(struct qlcnic_flt_header));
 if (ret) {
  dev_warn(&adapter->pdev->dev,
    "error reading flash layout header\n");
  return -EIO;
 }

 entry_size = flt_hdr.len - sizeof(struct qlcnic_flt_header);
 flt_entry = vzalloc(entry_size);
 if (flt_entry == ((void*)0)) {
  dev_warn(&adapter->pdev->dev, "error allocating memory\n");
  return -EIO;
 }
 memset(flt_entry, 0, entry_size);

 ret = qlcnic_rom_fast_read_words(adapter, QLCNIC_FLT_LOCATION +
      sizeof(struct qlcnic_flt_header),
      (u8 *)flt_entry, entry_size);
 if (ret) {
  dev_warn(&adapter->pdev->dev,
    "error reading flash layout entries\n");
  goto err_out;
 }

 while (i < (entry_size/sizeof(struct qlcnic_flt_entry))) {
  if (flt_entry[i].region == region)
   break;
  i++;
 }
 if (i >= (entry_size/sizeof(struct qlcnic_flt_entry))) {
  dev_warn(&adapter->pdev->dev,
    "region=%x not found in %d regions\n", region, i);
  ret = -EIO;
  goto err_out;
 }
 memcpy(region_entry, &flt_entry[i], sizeof(struct qlcnic_flt_entry));

err_out:
 vfree(flt_entry);
 return ret;
}
