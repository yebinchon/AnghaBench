
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ipl_type { ____Placeholder_ipl_type } ipl_type ;


 int BUG () ;
 int EINVAL ;





 int MACHINE_IS_VM ;
 int REIPL_METHOD_CCW_CIO ;
 int REIPL_METHOD_CCW_DIAG ;
 int REIPL_METHOD_CCW_VM ;
 int REIPL_METHOD_DEFAULT ;
 int REIPL_METHOD_FCP_DUMP ;
 int REIPL_METHOD_FCP_RO_DIAG ;
 int REIPL_METHOD_FCP_RO_VM ;
 int REIPL_METHOD_FCP_RW_DIAG ;
 int REIPL_METHOD_NSS ;
 int REIPL_METHOD_NSS_DIAG ;
 int diag308_set_works ;
 int reipl_block_actual ;
 int reipl_block_ccw ;
 int reipl_block_fcp ;
 int reipl_block_nss ;
 int reipl_capabilities ;
 int reipl_method ;
 int reipl_type ;

__attribute__((used)) static int reipl_set_type(enum ipl_type type)
{
 if (!(reipl_capabilities & type))
  return -EINVAL;

 switch(type) {
 case 132:
  if (diag308_set_works)
   reipl_method = REIPL_METHOD_CCW_DIAG;
  else if (MACHINE_IS_VM)
   reipl_method = REIPL_METHOD_CCW_VM;
  else
   reipl_method = REIPL_METHOD_CCW_CIO;
  reipl_block_actual = reipl_block_ccw;
  break;
 case 131:
  if (diag308_set_works)
   reipl_method = REIPL_METHOD_FCP_RW_DIAG;
  else if (MACHINE_IS_VM)
   reipl_method = REIPL_METHOD_FCP_RO_VM;
  else
   reipl_method = REIPL_METHOD_FCP_RO_DIAG;
  reipl_block_actual = reipl_block_fcp;
  break;
 case 130:
  reipl_method = REIPL_METHOD_FCP_DUMP;
  break;
 case 129:
  if (diag308_set_works)
   reipl_method = REIPL_METHOD_NSS_DIAG;
  else
   reipl_method = REIPL_METHOD_NSS;
  reipl_block_actual = reipl_block_nss;
  break;
 case 128:
  reipl_method = REIPL_METHOD_DEFAULT;
  break;
 default:
  BUG();
 }
 reipl_type = type;
 return 0;
}
