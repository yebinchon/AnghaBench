
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_7__ {scalar_t__ dual_mode_select; } ;
struct wl128x_nvs_file {scalar_t__ nvs; TYPE_2__ general_params; } ;
struct TYPE_6__ {scalar_t__ dual_mode_select; } ;
struct wl1271_nvs_file {scalar_t__ nvs; TYPE_1__ general_params; } ;
struct TYPE_9__ {scalar_t__ start; } ;
struct TYPE_10__ {TYPE_4__ reg; } ;
struct wl1271 {size_t* nvs; int quirks; int nvs_len; int enable_11a; int * ptable; TYPE_5__ curr_part; TYPE_3__* addresses; } ;
struct TYPE_8__ {size_t* addr; } ;


 int ALIGN (int,int) ;
 int DEBUG_BOOT ;
 int EILSEQ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PART_WORK ;
 int REG_CMD_MBOX_ADDRESS ;
 int WL1271_INI_LEGACY_NVS_FILE_SIZE ;
 int WLCORE_QUIRK_LEGACY_NVS ;
 int kfree (size_t*) ;
 size_t* kmemdup (size_t*,size_t,int ) ;
 int wl1271_debug (int ,char*,size_t,size_t) ;
 int wl1271_error (char*,...) ;
 int wlcore_set_partition (struct wl1271*,int *) ;
 int wlcore_write32 (struct wl1271*,size_t,size_t) ;
 int wlcore_write_data (struct wl1271*,int ,size_t*,size_t,int) ;

int wlcore_boot_upload_nvs(struct wl1271 *wl)
{
 size_t nvs_len, burst_len;
 int i;
 u32 dest_addr, val;
 u8 *nvs_ptr, *nvs_aligned;
 int ret;

 if (wl->nvs == ((void*)0)) {
  wl1271_error("NVS file is needed during boot");
  return -ENODEV;
 }

 if (wl->quirks & WLCORE_QUIRK_LEGACY_NVS) {
  struct wl1271_nvs_file *nvs =
   (struct wl1271_nvs_file *)wl->nvs;





  if (wl->nvs_len == sizeof(struct wl1271_nvs_file) ||
      wl->nvs_len == WL1271_INI_LEGACY_NVS_FILE_SIZE) {
   if (nvs->general_params.dual_mode_select)
    wl->enable_11a = 1;
  }

  if (wl->nvs_len != sizeof(struct wl1271_nvs_file) &&
      (wl->nvs_len != WL1271_INI_LEGACY_NVS_FILE_SIZE ||
       wl->enable_11a)) {
   wl1271_error("nvs size is not as expected: %zu != %zu",
    wl->nvs_len, sizeof(struct wl1271_nvs_file));
   kfree(wl->nvs);
   wl->nvs = ((void*)0);
   wl->nvs_len = 0;
   return -EILSEQ;
  }


  nvs_len = sizeof(nvs->nvs);
  nvs_ptr = (u8 *) nvs->nvs;
 } else {
  struct wl128x_nvs_file *nvs = (struct wl128x_nvs_file *)wl->nvs;

  if (wl->nvs_len == sizeof(struct wl128x_nvs_file)) {
   if (nvs->general_params.dual_mode_select)
    wl->enable_11a = 1;
  } else {
   wl1271_error("nvs size is not as expected: %zu != %zu",
         wl->nvs_len,
         sizeof(struct wl128x_nvs_file));
   kfree(wl->nvs);
   wl->nvs = ((void*)0);
   wl->nvs_len = 0;
   return -EILSEQ;
  }


  nvs_len = sizeof(nvs->nvs);
  nvs_ptr = (u8 *)nvs->nvs;
 }


 nvs_ptr[11] = wl->addresses[0].addr[0];
 nvs_ptr[10] = wl->addresses[0].addr[1];
 nvs_ptr[6] = wl->addresses[0].addr[2];
 nvs_ptr[5] = wl->addresses[0].addr[3];
 nvs_ptr[4] = wl->addresses[0].addr[4];
 nvs_ptr[3] = wl->addresses[0].addr[5];
 while (nvs_ptr[0]) {
  burst_len = nvs_ptr[0];
  dest_addr = (nvs_ptr[1] & 0xfe) | ((u32)(nvs_ptr[2] << 8));






  dest_addr += wl->curr_part.reg.start;


  nvs_ptr += 3;

  for (i = 0; i < burst_len; i++) {
   if (nvs_ptr + 3 >= (u8 *) wl->nvs + nvs_len)
    goto out_badnvs;

   val = (nvs_ptr[0] | (nvs_ptr[1] << 8)
          | (nvs_ptr[2] << 16) | (nvs_ptr[3] << 24));

   wl1271_debug(DEBUG_BOOT,
         "nvs burst write 0x%x: 0x%x",
         dest_addr, val);
   ret = wlcore_write32(wl, dest_addr, val);
   if (ret < 0)
    return ret;

   nvs_ptr += 4;
   dest_addr += 4;
  }

  if (nvs_ptr >= (u8 *) wl->nvs + nvs_len)
   goto out_badnvs;
 }
 nvs_ptr = (u8 *)wl->nvs +
   ALIGN(nvs_ptr - (u8 *)wl->nvs + 7, 4);

 if (nvs_ptr >= (u8 *) wl->nvs + nvs_len)
  goto out_badnvs;

 nvs_len -= nvs_ptr - (u8 *)wl->nvs;


 ret = wlcore_set_partition(wl, &wl->ptable[PART_WORK]);
 if (ret < 0)
  return ret;


 nvs_aligned = kmemdup(nvs_ptr, nvs_len, GFP_KERNEL);
 if (!nvs_aligned)
  return -ENOMEM;


 ret = wlcore_write_data(wl, REG_CMD_MBOX_ADDRESS, nvs_aligned, nvs_len,
    0);

 kfree(nvs_aligned);
 return ret;

out_badnvs:
 wl1271_error("nvs data is malformed");
 return -EILSEQ;
}
