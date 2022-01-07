
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ amem; } ;
typedef TYPE_1__ ray_dev_t ;


 scalar_t__ CIS_OFFSET ;
 scalar_t__ HCS_INTR_OFFSET ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void clear_interrupt(ray_dev_t *local)
{
 writeb(0, local->amem + CIS_OFFSET + HCS_INTR_OFFSET);
}
