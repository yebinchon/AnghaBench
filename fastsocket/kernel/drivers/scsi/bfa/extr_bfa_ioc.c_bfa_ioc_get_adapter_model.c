
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfi_ioc_attr_s {int card_type; } ;
struct TYPE_2__ {int device_id; } ;
struct bfa_ioc_s {TYPE_1__ pcidev; struct bfi_ioc_attr_s* attr; } ;


 int BFA_ADAPTER_MODEL_NAME_LEN ;
 char* BFA_MFG_NAME ;
 int WARN_ON (int) ;
 scalar_t__ bfa_asic_id_ct2 (int ) ;
 int bfa_ioc_get_nports (struct bfa_ioc_s*) ;
 int bfa_mfg_is_mezz (int) ;
 int memset (void*,int ,int ) ;
 int snprintf (char*,int ,char*,char*,int,...) ;

void
bfa_ioc_get_adapter_model(struct bfa_ioc_s *ioc, char *model)
{
 struct bfi_ioc_attr_s *ioc_attr;
 u8 nports = bfa_ioc_get_nports(ioc);

 WARN_ON(!model);
 memset((void *)model, 0, BFA_ADAPTER_MODEL_NAME_LEN);

 ioc_attr = ioc->attr;

 if (bfa_asic_id_ct2(ioc->pcidev.device_id) &&
  (!bfa_mfg_is_mezz(ioc_attr->card_type)))
  snprintf(model, BFA_ADAPTER_MODEL_NAME_LEN, "%s-%u-%u%s",
   BFA_MFG_NAME, ioc_attr->card_type, nports, "p");
 else
  snprintf(model, BFA_ADAPTER_MODEL_NAME_LEN, "%s-%u",
   BFA_MFG_NAME, ioc_attr->card_type);
}
