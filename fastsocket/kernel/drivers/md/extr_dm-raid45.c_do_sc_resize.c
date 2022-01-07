
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stripes_to_set; int stripes; } ;
struct raid_set {TYPE_1__ sc; } ;


 int SC_GROW ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int sc_grow (TYPE_1__*,unsigned int,int ) ;
 int sc_shrink (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void do_sc_resize(struct raid_set *rs)
{
 unsigned set = atomic_read(&rs->sc.stripes_to_set);

 if (set) {
  unsigned cur = atomic_read(&rs->sc.stripes);
  int r = (set > cur) ? sc_grow(&rs->sc, set - cur, SC_GROW) :
          sc_shrink(&rs->sc, cur - set);


  if (!r)
   atomic_set(&rs->sc.stripes_to_set, 0);
 }
}
