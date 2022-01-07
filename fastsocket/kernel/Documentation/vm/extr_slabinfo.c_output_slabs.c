
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabinfo {scalar_t__ alias; } ;


 int ops (struct slabinfo*) ;
 int report (struct slabinfo*) ;
 scalar_t__ set_debug ;
 scalar_t__ show_numa ;
 scalar_t__ show_ops ;
 scalar_t__ show_report ;
 scalar_t__ show_slab ;
 scalar_t__ show_track ;
 int show_tracking (struct slabinfo*) ;
 scalar_t__ shrink ;
 int slab_debug (struct slabinfo*) ;
 int slab_numa (struct slabinfo*,int ) ;
 int slab_shrink (struct slabinfo*) ;
 int slab_validate (struct slabinfo*) ;
 int slabcache (struct slabinfo*) ;
 struct slabinfo* slabinfo ;
 int slabs ;
 scalar_t__ validate ;

__attribute__((used)) static void output_slabs(void)
{
 struct slabinfo *slab;

 for (slab = slabinfo; slab < slabinfo + slabs; slab++) {

  if (slab->alias)
   continue;


  if (show_numa)
   slab_numa(slab, 0);
  else if (show_track)
   show_tracking(slab);
  else if (validate)
   slab_validate(slab);
  else if (shrink)
   slab_shrink(slab);
  else if (set_debug)
   slab_debug(slab);
  else if (show_ops)
   ops(slab);
  else if (show_slab)
   slabcache(slab);
  else if (show_report)
   report(slab);
 }
}
