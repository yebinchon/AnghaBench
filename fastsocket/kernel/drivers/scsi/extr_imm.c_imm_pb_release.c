
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ imm_struct ;


 int parport_release (int ) ;

__attribute__((used)) static inline void imm_pb_release(imm_struct *dev)
{
 parport_release(dev->dev);
}
