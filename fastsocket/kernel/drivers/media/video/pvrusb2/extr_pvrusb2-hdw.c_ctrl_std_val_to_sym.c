
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ctrl {int dummy; } ;


 unsigned int pvr2_std_id_to_str (char*,unsigned int,int) ;

__attribute__((used)) static int ctrl_std_val_to_sym(struct pvr2_ctrl *cptr,int msk,int val,
          char *bufPtr,unsigned int bufSize,
          unsigned int *len)
{
 *len = pvr2_std_id_to_str(bufPtr,bufSize,msk & val);
 return 0;
}
