
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int base; } ;
typedef TYPE_1__ imm_struct ;


 int EIO ;
 int device_check (TYPE_1__*) ;
 int imm_connect (TYPE_1__*,int ) ;
 int imm_disconnect (TYPE_1__*) ;
 int imm_reset_pulse (int ) ;
 int mdelay (int) ;

__attribute__((used)) static int imm_init(imm_struct *dev)
{
 if (imm_connect(dev, 0) != 1)
  return -EIO;
 imm_reset_pulse(dev->base);
 mdelay(1);
 imm_disconnect(dev);
 mdelay(1);
 return device_check(dev);
}
