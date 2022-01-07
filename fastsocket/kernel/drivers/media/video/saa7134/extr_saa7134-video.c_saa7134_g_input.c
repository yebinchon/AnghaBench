
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {unsigned int ctl_input; } ;
struct file {int dummy; } ;



__attribute__((used)) static int saa7134_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;

 *i = dev->ctl_input;
 return 0;
}
