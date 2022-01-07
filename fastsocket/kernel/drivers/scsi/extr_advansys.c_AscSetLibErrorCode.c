
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ushort ;
struct TYPE_3__ {scalar_t__ err_code; int iop_base; } ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int ASCV_ASCDVC_ERR_CODE_W ;
 int AscWriteLramWord (int ,int ,int) ;

__attribute__((used)) static int AscSetLibErrorCode(ASC_DVC_VAR *asc_dvc, ushort err_code)
{
 if (asc_dvc->err_code == 0) {
  asc_dvc->err_code = err_code;
  AscWriteLramWord(asc_dvc->iop_base, ASCV_ASCDVC_ERR_CODE_W,
     err_code);
 }
 return err_code;
}
