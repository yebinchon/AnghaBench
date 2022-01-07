
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const u8 ;
struct image_hdr {int dummy; } ;
struct TYPE_4__ {int num_images; } ;
struct flash_section_info {TYPE_3__* fsec_entry; TYPE_1__ fsec_hdr; } ;
struct flash_file_hdr_g3 {int dummy; } ;
struct firmware {int size; int const* data; } ;
struct be_dma_mem {int dummy; } ;
struct be_adapter {TYPE_2__* pdev; } ;
struct TYPE_6__ {int type; int pad_size; int offset; } ;
struct TYPE_5__ {int dev; } ;
 int OPTYPE_BIOS ;
 int OPTYPE_FCOE_BIOS ;
 int OPTYPE_ISCSI_ACTIVE ;
 int OPTYPE_ISCSI_BACKUP ;
 int OPTYPE_NCSI_FW ;
 int OPTYPE_PXE_BIOS ;
 int OPTYPE_REDBOOT ;
 int be_flash (struct be_adapter*,int const*,struct be_dma_mem*,int,int) ;
 int be_flash_redboot (struct be_adapter*,int const*,int,int,int) ;
 int dev_err (int *,char*,...) ;
 struct flash_section_info* get_fsec_info (struct be_adapter*,int,struct firmware const*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int be_flash_skyhawk(struct be_adapter *adapter,
  const struct firmware *fw,
  struct be_dma_mem *flash_cmd, int num_of_images)
{
 int status = 0, i, filehdr_size = 0;
 int img_offset, img_size, img_optype, redboot;
 int img_hdrs_size = num_of_images * sizeof(struct image_hdr);
 const u8 *p = fw->data;
 struct flash_section_info *fsec = ((void*)0);

 filehdr_size = sizeof(struct flash_file_hdr_g3);
 fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
 if (!fsec) {
  dev_err(&adapter->pdev->dev,
   "Invalid Cookie. UFI corrupted ?\n");
  return -1;
 }

 for (i = 0; i < le32_to_cpu(fsec->fsec_hdr.num_images); i++) {
  img_offset = le32_to_cpu(fsec->fsec_entry[i].offset);
  img_size = le32_to_cpu(fsec->fsec_entry[i].pad_size);

  switch (le32_to_cpu(fsec->fsec_entry[i].type)) {
  case 132:
   img_optype = OPTYPE_ISCSI_ACTIVE;
   break;
  case 134:
   img_optype = OPTYPE_REDBOOT;
   break;
  case 129:
   img_optype = OPTYPE_BIOS;
   break;
  case 128:
   img_optype = OPTYPE_PXE_BIOS;
   break;
  case 130:
   img_optype = OPTYPE_FCOE_BIOS;
   break;
  case 133:
   img_optype = OPTYPE_ISCSI_BACKUP;
   break;
  case 131:
   img_optype = OPTYPE_NCSI_FW;
   break;
  default:
   continue;
  }

  if (img_optype == OPTYPE_REDBOOT) {
   redboot = be_flash_redboot(adapter, fw->data,
     img_offset, img_size,
     filehdr_size + img_hdrs_size);
   if (!redboot)
    continue;
  }

  p = fw->data;
  p += filehdr_size + img_offset + img_hdrs_size;
  if (p + img_size > fw->data + fw->size)
   return -1;

  status = be_flash(adapter, p, flash_cmd, img_optype, img_size);
  if (status) {
   dev_err(&adapter->pdev->dev,
    "Flashing section type %d failed.\n",
    fsec->fsec_entry[i].type);
   return status;
  }
 }
 return 0;
}
