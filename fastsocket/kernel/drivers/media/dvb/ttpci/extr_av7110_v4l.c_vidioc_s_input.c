
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct file {int dummy; } ;
struct av7110 {unsigned int current_input; int analog_tuner_flags; } ;


 int EINVAL ;
 int av7110_dvb_c_switch (void*) ;
 int dprintk (int,char*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *fh, unsigned int input)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct av7110 *av7110 = (struct av7110 *)dev->ext_priv;

 dprintk(2, "VIDIOC_S_INPUT: %d\n", input);

 if (!av7110->analog_tuner_flags)
  return 0;

 if (input >= 4)
  return -EINVAL;

 av7110->current_input = input;
 return av7110_dvb_c_switch(fh);
}
