
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ expires; } ;
struct TYPE_5__ {TYPE_3__ timer; int req_gen; int req_gen_timer; int * handler; } ;
typedef TYPE_1__ ide_hwif_t ;
typedef int ide_handler_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int BUG_ON (int *) ;
 int add_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;

void __ide_set_handler(ide_drive_t *drive, ide_handler_t *handler,
         unsigned int timeout)
{
 ide_hwif_t *hwif = drive->hwif;

 BUG_ON(hwif->handler);
 hwif->handler = handler;
 hwif->timer.expires = jiffies + timeout;
 hwif->req_gen_timer = hwif->req_gen;
 add_timer(&hwif->timer);
}
