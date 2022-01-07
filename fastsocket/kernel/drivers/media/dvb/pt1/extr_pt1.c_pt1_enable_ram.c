
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt1 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int HZ ;
 int pt1_do_enable_ram (struct pt1*) ;
 int schedule_timeout_uninterruptible (int) ;

__attribute__((used)) static int pt1_enable_ram(struct pt1 *pt1)
{
 int i, ret;
 int phase;
 schedule_timeout_uninterruptible((HZ + 999) / 1000);
 phase = pt1->pdev->device == 0x211a ? 128 : 166;
 for (i = 0; i < phase; i++) {
  ret = pt1_do_enable_ram(pt1);
  if (ret < 0)
   return ret;
 }
 return 0;
}
