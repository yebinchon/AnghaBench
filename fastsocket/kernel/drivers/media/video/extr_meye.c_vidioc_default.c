
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meye_params {int dummy; } ;
struct file {int dummy; } ;


 long EINVAL ;






 long meyeioc_g_params (struct meye_params*) ;
 long meyeioc_qbuf_capt (int*) ;
 long meyeioc_s_params (struct meye_params*) ;
 long meyeioc_stillcapt () ;
 long meyeioc_stilljcapt (int*) ;
 long meyeioc_sync (struct file*,void*,int*) ;

__attribute__((used)) static long vidioc_default(struct file *file, void *fh, int cmd, void *arg)
{
 switch (cmd) {
 case 133:
  return meyeioc_g_params((struct meye_params *) arg);

 case 128:
  return meyeioc_s_params((struct meye_params *) arg);

 case 132:
  return meyeioc_qbuf_capt((int *) arg);

 case 129:
  return meyeioc_sync(file, fh, (int *) arg);

 case 131:
  return meyeioc_stillcapt();

 case 130:
  return meyeioc_stilljcapt((int *) arg);

 default:
  return -EINVAL;
 }

}
