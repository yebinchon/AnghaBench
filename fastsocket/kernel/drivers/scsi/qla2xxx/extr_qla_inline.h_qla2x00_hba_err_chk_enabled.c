
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srb_t ;


 int GET_CMD_SP (int *) ;






 int ql2xenablehba_err_chk ;
 int scsi_get_prot_op (int ) ;

__attribute__((used)) static inline int
qla2x00_hba_err_chk_enabled(srb_t *sp)
{







 switch (scsi_get_prot_op(GET_CMD_SP(sp))) {
 case 131:
 case 130:
  if (ql2xenablehba_err_chk >= 1)
   return 1;
 break;
 case 132:
 case 129:
  if (ql2xenablehba_err_chk >= 2)
   return 1;
  break;
 case 133:
 case 128:
  return 1;
 }
 return 0;
}
