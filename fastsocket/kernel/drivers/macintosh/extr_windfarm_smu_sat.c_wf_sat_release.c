
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_sat_sensor {size_t nr; int refcnt; struct wf_sat_sensor* sat; } ;
struct wf_sat {size_t nr; int refcnt; struct wf_sat* sat; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct wf_sat_sensor*) ;
 int ** sats ;
 struct wf_sat_sensor* wf_to_sat (struct wf_sensor*) ;

__attribute__((used)) static void wf_sat_release(struct wf_sensor *sr)
{
 struct wf_sat_sensor *sens = wf_to_sat(sr);
 struct wf_sat *sat = sens->sat;

 if (atomic_dec_and_test(&sat->refcnt)) {
  if (sat->nr >= 0)
   sats[sat->nr] = ((void*)0);
  kfree(sat);
 }
 kfree(sens);
}
