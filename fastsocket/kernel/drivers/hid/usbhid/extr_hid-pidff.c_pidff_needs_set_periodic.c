
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magnitude; scalar_t__ offset; scalar_t__ phase; scalar_t__ period; } ;
struct TYPE_3__ {TYPE_2__ periodic; } ;
struct ff_effect {TYPE_1__ u; } ;



__attribute__((used)) static int pidff_needs_set_periodic(struct ff_effect *effect,
        struct ff_effect *old)
{
 return effect->u.periodic.magnitude != old->u.periodic.magnitude ||
        effect->u.periodic.offset != old->u.periodic.offset ||
        effect->u.periodic.phase != old->u.periodic.phase ||
        effect->u.periodic.period != old->u.periodic.period;
}
