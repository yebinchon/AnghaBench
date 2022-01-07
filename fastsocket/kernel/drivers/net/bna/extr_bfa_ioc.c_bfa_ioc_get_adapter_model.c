
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_attr {int card_type; } ;
struct bfa_ioc {struct bfi_ioc_attr* attr; } ;


 int BFA_ADAPTER_MODEL_NAME_LEN ;
 char* BFA_MFG_NAME ;
 int BUG_ON (int) ;
 int memset (char*,int ,int ) ;
 int snprintf (char*,int ,char*,char*,int) ;

__attribute__((used)) static void
bfa_ioc_get_adapter_model(struct bfa_ioc *ioc, char *model)
{
 struct bfi_ioc_attr *ioc_attr;

 BUG_ON(!(model));
 memset(model, 0, BFA_ADAPTER_MODEL_NAME_LEN);

 ioc_attr = ioc->attr;

 snprintf(model, BFA_ADAPTER_MODEL_NAME_LEN, "%s-%u",
  BFA_MFG_NAME, ioc_attr->card_type);
}
