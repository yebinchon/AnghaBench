
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct budget_av {int dummy; } ;


 int dprintk (int,char*,unsigned int) ;
 int saa7113_setinput (struct budget_av*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *fh, unsigned int input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct budget_av *budget_av = (struct budget_av *)dev->ext_priv;

 dprintk(1, "VIDIOC_S_INPUT %d.\n", input);
 return saa7113_setinput(budget_av, input);
}
