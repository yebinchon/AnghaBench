
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio_device_id {scalar_t__ type; scalar_t__ proto; scalar_t__ extra; scalar_t__ id; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ proto; scalar_t__ extra; scalar_t__ id; } ;
struct serio {TYPE_1__ id; } ;


 scalar_t__ SERIO_ANY ;

__attribute__((used)) static int serio_match_port(const struct serio_device_id *ids, struct serio *serio)
{
 while (ids->type || ids->proto) {
  if ((ids->type == SERIO_ANY || ids->type == serio->id.type) &&
      (ids->proto == SERIO_ANY || ids->proto == serio->id.proto) &&
      (ids->extra == SERIO_ANY || ids->extra == serio->id.extra) &&
      (ids->id == SERIO_ANY || ids->id == serio->id.id))
   return 1;
  ids++;
 }
 return 0;
}
