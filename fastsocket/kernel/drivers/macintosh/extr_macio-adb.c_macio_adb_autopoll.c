
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int r; } ;
struct TYPE_6__ {int r; } ;
struct TYPE_5__ {int r; } ;
struct TYPE_8__ {TYPE_3__ autopoll; TYPE_2__ active_lo; TYPE_1__ active_hi; } ;


 int APE ;
 TYPE_4__* adb ;
 int macio_lock ;
 int out_8 (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int macio_adb_autopoll(int devs)
{
 unsigned long flags;

 spin_lock_irqsave(&macio_lock, flags);
 out_8(&adb->active_hi.r, devs >> 8);
 out_8(&adb->active_lo.r, devs);
 out_8(&adb->autopoll.r, devs? APE: 0);
 spin_unlock_irqrestore(&macio_lock, flags);
 return 0;
}
