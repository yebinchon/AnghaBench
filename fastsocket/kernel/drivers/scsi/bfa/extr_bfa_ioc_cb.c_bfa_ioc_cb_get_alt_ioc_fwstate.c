
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alt_ioc_fwstate; } ;
struct bfa_ioc_s {TYPE_1__ ioc_regs; } ;
typedef enum bfi_ioc_state { ____Placeholder_bfi_ioc_state } bfi_ioc_state ;


 int BFA_IOC_CB_FWSTATE_MASK ;
 int readl (int ) ;

__attribute__((used)) static enum bfi_ioc_state
bfa_ioc_cb_get_alt_ioc_fwstate(struct bfa_ioc_s *ioc)
{
 return (enum bfi_ioc_state)(readl(ioc->ioc_regs.alt_ioc_fwstate) &
   BFA_IOC_CB_FWSTATE_MASK);
}
