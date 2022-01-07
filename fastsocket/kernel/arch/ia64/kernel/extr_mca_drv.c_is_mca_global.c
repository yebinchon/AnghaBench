
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ia64_sal_os_state {int rv_rc; } ;
typedef int peidx_table_t ;
struct TYPE_4__ {scalar_t__ uc; scalar_t__ rc; scalar_t__ cc; scalar_t__ tc; } ;
typedef TYPE_1__ pal_processor_state_info_t ;
struct TYPE_5__ {int bsi; scalar_t__ eb; scalar_t__ ib; } ;
typedef TYPE_2__ pal_bus_check_info_t ;
typedef int mca_type_t ;


 int MCA_IS_GLOBAL ;
 int MCA_IS_LOCAL ;
 scalar_t__ peidx_psp (int *) ;

__attribute__((used)) static mca_type_t
is_mca_global(peidx_table_t *peidx, pal_bus_check_info_t *pbci,
       struct ia64_sal_os_state *sos)
{
 pal_processor_state_info_t *psp =
  (pal_processor_state_info_t*)peidx_psp(peidx);
 switch (sos->rv_rc) {
  case -1:
   return MCA_IS_GLOBAL;
  case 0:
   return MCA_IS_LOCAL;
  case 1:
  case 2:
  default:
   break;
 }





 if (psp->tc || psp->cc || psp->rc || psp->uc)
  return MCA_IS_LOCAL;





 if (!pbci || pbci->ib)
  return MCA_IS_GLOBAL;
 if (pbci->eb)
  switch (pbci->bsi) {
   case 0:

    return MCA_IS_LOCAL;
   case 1:
   case 2:
   case 3:
    return MCA_IS_GLOBAL;
  }

 return MCA_IS_GLOBAL;
}
