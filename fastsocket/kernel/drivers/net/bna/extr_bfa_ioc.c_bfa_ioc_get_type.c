
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc {scalar_t__ clscode; TYPE_1__* attr; } ;
typedef enum bfa_ioc_type { ____Placeholder_bfa_ioc_type } bfa_ioc_type ;
struct TYPE_2__ {scalar_t__ port_mode; } ;


 int BFA_IOC_TYPE_FC ;
 int BFA_IOC_TYPE_FCoE ;
 int BFA_IOC_TYPE_LL ;
 scalar_t__ BFI_PCIFN_CLASS_ETH ;
 scalar_t__ BFI_PCIFN_CLASS_FC ;
 scalar_t__ BFI_PORT_MODE_FC ;
 int BUG_ON (int) ;

__attribute__((used)) static enum bfa_ioc_type
bfa_ioc_get_type(struct bfa_ioc *ioc)
{
 if (ioc->clscode == BFI_PCIFN_CLASS_ETH)
  return BFA_IOC_TYPE_LL;

 BUG_ON(!(ioc->clscode == BFI_PCIFN_CLASS_FC));

 return (ioc->attr->port_mode == BFI_PORT_MODE_FC)
  ? BFA_IOC_TYPE_FC : BFA_IOC_TYPE_FCoE;
}
