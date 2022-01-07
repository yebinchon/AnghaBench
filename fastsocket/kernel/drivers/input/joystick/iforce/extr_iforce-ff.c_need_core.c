
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; scalar_t__ delay; } ;
struct TYPE_4__ {scalar_t__ button; scalar_t__ interval; } ;
struct ff_effect {scalar_t__ direction; TYPE_1__ replay; TYPE_2__ trigger; } ;



__attribute__((used)) static int need_core(struct ff_effect *old, struct ff_effect *new)
{
 if (old->direction != new->direction
  || old->trigger.button != new->trigger.button
  || old->trigger.interval != new->trigger.interval
  || old->replay.length != new->replay.length
  || old->replay.delay != new->replay.delay)
  return 1;

 return 0;
}
