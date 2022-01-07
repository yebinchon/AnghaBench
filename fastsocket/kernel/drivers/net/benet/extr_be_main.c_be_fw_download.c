
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct image_hdr {int imageid; } ;
struct flash_file_hdr_g3 {int num_imgs; } ;
struct firmware {int * data; } ;
struct be_dma_mem {int size; int dma; int va; } ;
struct be_cmd_write_flashrom {int dummy; } ;
struct be_adapter {int asic_rev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UFI_TYPE2 ;



 int be_flash_BEx (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ;
 int be_flash_skyhawk (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ;
 int be_get_ufi_type (struct be_adapter*,struct flash_file_hdr_g3*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int be_fw_download(struct be_adapter *adapter, const struct firmware* fw)
{
 struct flash_file_hdr_g3 *fhdr3;
 struct image_hdr *img_hdr_ptr = ((void*)0);
 struct be_dma_mem flash_cmd;
 const u8 *p;
 int status = 0, i = 0, num_imgs = 0, ufi_type = 0;

 flash_cmd.size = sizeof(struct be_cmd_write_flashrom);
 flash_cmd.va = dma_alloc_coherent(&adapter->pdev->dev, flash_cmd.size,
       &flash_cmd.dma, GFP_KERNEL);
 if (!flash_cmd.va) {
  status = -ENOMEM;
  goto be_fw_exit;
 }

 p = fw->data;
 fhdr3 = (struct flash_file_hdr_g3 *)p;

 ufi_type = be_get_ufi_type(adapter, fhdr3);

 num_imgs = le32_to_cpu(fhdr3->num_imgs);
 for (i = 0; i < num_imgs; i++) {
  img_hdr_ptr = (struct image_hdr *)(fw->data +
    (sizeof(struct flash_file_hdr_g3) +
     i * sizeof(struct image_hdr)));
  if (le32_to_cpu(img_hdr_ptr->imageid) == 1) {
   switch (ufi_type) {
   case 128:
    status = be_flash_skyhawk(adapter, fw,
       &flash_cmd, num_imgs);
    break;
   case 129:
    status = be_flash_BEx(adapter, fw, &flash_cmd,
            num_imgs);
    break;
   case 130:

    if (adapter->asic_rev < 0x10)
     status = be_flash_BEx(adapter, fw,
             &flash_cmd,
             num_imgs);
    else {
     status = -1;
     dev_err(&adapter->pdev->dev,
      "Can't load BE3 UFI on BE3R\n");
    }
   }
  }
 }

 if (ufi_type == UFI_TYPE2)
  status = be_flash_BEx(adapter, fw, &flash_cmd, 0);
 else if (ufi_type == -1)
  status = -1;

 dma_free_coherent(&adapter->pdev->dev, flash_cmd.size, flash_cmd.va,
     flash_cmd.dma);
 if (status) {
  dev_err(&adapter->pdev->dev, "Firmware load error\n");
  goto be_fw_exit;
 }

 dev_info(&adapter->pdev->dev, "Firmware flashed successfully\n");

be_fw_exit:
 return status;
}
