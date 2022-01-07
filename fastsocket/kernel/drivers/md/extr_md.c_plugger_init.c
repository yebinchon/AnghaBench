
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct plug_handle {void (* unplug_fn ) (struct plug_handle*) ;int unplug_work; TYPE_1__ unplug_timer; scalar_t__ unplug_flag; } ;


 int INIT_WORK (int *,int ) ;
 int init_timer (TYPE_1__*) ;
 int plugger_timeout ;
 int plugger_work ;

void plugger_init(struct plug_handle *plug,
    void (*unplug_fn)(struct plug_handle *))
{
 plug->unplug_flag = 0;
 plug->unplug_fn = unplug_fn;
 init_timer(&plug->unplug_timer);
 plug->unplug_timer.function = plugger_timeout;
 plug->unplug_timer.data = (unsigned long)plug;
 INIT_WORK(&plug->unplug_work, plugger_work);
}
