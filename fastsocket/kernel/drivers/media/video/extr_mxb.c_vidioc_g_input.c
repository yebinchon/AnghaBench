
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {unsigned int cur_input; } ;
struct file {int dummy; } ;


 int DEB_EE (char*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *fh, unsigned int *i)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct mxb *mxb = (struct mxb *)dev->ext_priv;
 *i = mxb->cur_input;

 DEB_EE(("VIDIOC_G_INPUT %d.\n", *i));
 return 0;
}
