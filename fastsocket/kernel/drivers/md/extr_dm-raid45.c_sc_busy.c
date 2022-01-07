
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stripes; } ;
struct raid_set {TYPE_1__ sc; } ;


 int STRIPES_MIN ;
 int atomic_read (int *) ;
 int sc_active (TYPE_1__*) ;

__attribute__((used)) static int sc_busy(struct raid_set *rs)
{
 return sc_active(&rs->sc) >
        atomic_read(&rs->sc.stripes) - (STRIPES_MIN / 2);
}
