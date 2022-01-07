
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int model ;
typedef int fw ;


 int ATA_ID_FW_REV ;
 int ATA_ID_FW_REV_LEN ;
 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ata_id_c_string (int *,unsigned char*,int ,int) ;
 int ata_id_has_fua (int *) ;
 int libata_fua ;
 scalar_t__ strcmp (unsigned char*,char*) ;

__attribute__((used)) static int ata_dev_supports_fua(u16 *id)
{
 unsigned char model[ATA_ID_PROD_LEN + 1], fw[ATA_ID_FW_REV_LEN + 1];

 if (!libata_fua)
  return 0;
 if (!ata_id_has_fua(id))
  return 0;

 ata_id_c_string(id, model, ATA_ID_PROD, sizeof(model));
 ata_id_c_string(id, fw, ATA_ID_FW_REV, sizeof(fw));

 if (strcmp(model, "Maxtor"))
  return 1;
 if (strcmp(fw, "BANC1G10"))
  return 1;

 return 0;
}
