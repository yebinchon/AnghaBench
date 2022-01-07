
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct link_qual {int vgc_level_reg; } ;
struct TYPE_6__ {scalar_t__ count; struct link_qual qual; } ;
struct rt2x00_dev {TYPE_2__* ops; TYPE_3__ link; int flags; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* reset_tuner ) (struct rt2x00_dev*,struct link_qual*) ;} ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int memset (struct link_qual*,int ,int) ;
 int rt2x00link_antenna_reset (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,struct link_qual*) ;
 int test_bit (int ,int *) ;

void rt2x00link_reset_tuner(struct rt2x00_dev *rt2x00dev, bool antenna)
{
 struct link_qual *qual = &rt2x00dev->link.qual;
 u8 vgc_level = qual->vgc_level_reg;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return;
 rt2x00dev->link.count = 0;
 memset(qual, 0, sizeof(*qual));






 qual->vgc_level_reg = vgc_level;




 rt2x00dev->ops->lib->reset_tuner(rt2x00dev, qual);

 if (antenna)
  rt2x00link_antenna_reset(rt2x00dev);
}
