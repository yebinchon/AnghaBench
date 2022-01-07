
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int moduleid_t ;
typedef int geoid_t ;


 int MODULE_GET_BPOS (int ) ;
 int MODULE_GET_RACK (int ) ;
 scalar_t__ cnode_possible (int) ;
 int cnodeid_get_geoid (int) ;
 int geo_module (int ) ;
 int geo_slab (int ) ;
 int geo_slot (int ) ;
 int num_cnodes ;
 scalar_t__ sn_hwperf_location_to_bpos (char*,int*,int*,int*,int*) ;

__attribute__((used)) static int sn_hwperf_geoid_to_cnode(char *location)
{
 int cnode;
 geoid_t geoid;
 moduleid_t module_id;
 int rack, bay, slot, slab;
 int this_rack, this_bay, this_slot, this_slab;

 if (sn_hwperf_location_to_bpos(location, &rack, &bay, &slot, &slab))
  return -1;





 for (cnode = 0; cnode < num_cnodes; cnode++) {
  geoid = cnodeid_get_geoid(cnode);
  module_id = geo_module(geoid);
  this_rack = MODULE_GET_RACK(module_id);
  this_bay = MODULE_GET_BPOS(module_id);
  this_slot = geo_slot(geoid);
  this_slab = geo_slab(geoid);
  if (rack == this_rack && bay == this_bay &&
   slot == this_slot && slab == this_slab) {
   break;
  }
 }

 return cnode_possible(cnode) ? cnode : -1;
}
