
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int dummy; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*) ;
 long EINVAL ;
 long ENOIOCTLCMD ;
 int MXB_AUDIOS ;


 int tea6420_route_cd (struct mxb*,int) ;
 int tea6420_route_line (struct mxb*,int) ;

__attribute__((used)) static long vidioc_default(struct file *file, void *fh, int cmd, void *arg)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 switch (cmd) {
 case 129:
 {
  int i = *(int *)arg;

  if (i < 0 || i >= MXB_AUDIOS) {
   DEB_D(("illegal argument to MXB_S_AUDIO_CD: i:%d.\n", i));
   return -EINVAL;
  }

  DEB_EE(("MXB_S_AUDIO_CD: i:%d.\n", i));

  tea6420_route_cd(mxb, i);
  return 0;
 }
 case 128:
 {
  int i = *(int *)arg;

  if (i < 0 || i >= MXB_AUDIOS) {
   DEB_D(("illegal argument to MXB_S_AUDIO_LINE: i:%d.\n", i));
   return -EINVAL;
  }

  DEB_EE(("MXB_S_AUDIO_LINE: i:%d.\n", i));
  tea6420_route_line(mxb, i);
  return 0;
 }
 default:



  return -ENOIOCTLCMD;
 }
 return 0;
}
