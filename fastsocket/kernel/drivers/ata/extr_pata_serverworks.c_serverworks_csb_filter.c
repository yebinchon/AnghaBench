
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {scalar_t__ class; int id; } ;
typedef int model_num ;


 scalar_t__ ATA_DEV_ATA ;
 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ATA_SHIFT_UDMA ;
 unsigned long ata_bmdma_mode_filter (struct ata_device*,unsigned long) ;
 int ata_id_c_string (int ,char*,int ,int) ;
 char** csb_bad_ata100 ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static unsigned long serverworks_csb_filter(struct ata_device *adev, unsigned long mask)
{
 const char *p;
 char model_num[ATA_ID_PROD_LEN + 1];
 int i;


 if (adev->class != ATA_DEV_ATA)
  return ata_bmdma_mode_filter(adev, mask);


 ata_id_c_string(adev->id, model_num, ATA_ID_PROD, sizeof(model_num));

 for (i = 0; (p = csb_bad_ata100[i]) != ((void*)0); i++) {
  if (!strcmp(p, model_num))
   mask &= ~(0xE0 << ATA_SHIFT_UDMA);
 }
 return ata_bmdma_mode_filter(adev, mask);
}
