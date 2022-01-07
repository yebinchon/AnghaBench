
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int name; } ;


 int SAA7135_DSP_RWCLEAR ;
 int SAA7135_DSP_RWCLEAR_RERR ;
 int SAA7135_DSP_RWSTATE ;
 int SAA7135_DSP_RWSTATE_ERR ;
 int d2printk (char*,int ) ;
 int saa_readb (int ) ;
 int saa_writeb (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int saa_dsp_reset_error_bit(struct saa7134_dev *dev)
{
 int state = saa_readb(SAA7135_DSP_RWSTATE);
 if (unlikely(state & SAA7135_DSP_RWSTATE_ERR)) {
  d2printk("%s: resetting error bit\n", dev->name);
  saa_writeb(SAA7135_DSP_RWCLEAR, SAA7135_DSP_RWCLEAR_RERR);
 }
 return 0;
}
