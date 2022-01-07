
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radar_detector_specs {int pri_max; int ppb; int num_pri; } ;
struct pri_detector {int window_size; int max_count; struct radar_detector_specs const* rs; int pulses; int sequences; int reset; int add_pulse; int exit; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct pri_detector* kzalloc (int,int ) ;
 int pool_register_ref () ;
 int pri_detector_add_pulse ;
 int pri_detector_exit ;
 int pri_detector_reset ;

struct pri_detector *pri_detector_init(const struct radar_detector_specs *rs)
{
 struct pri_detector *de;

 de = kzalloc(sizeof(*de), GFP_ATOMIC);
 if (de == ((void*)0))
  return ((void*)0);
 de->exit = pri_detector_exit;
 de->add_pulse = pri_detector_add_pulse;
 de->reset = pri_detector_reset;

 INIT_LIST_HEAD(&de->sequences);
 INIT_LIST_HEAD(&de->pulses);
 de->window_size = rs->pri_max * rs->ppb * rs->num_pri;
 de->max_count = rs->ppb * 2;
 de->rs = rs;

 pool_register_ref();
 return de;
}
