
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct wf_6690_sensor {int dummy; } ;


 int kfree (struct wf_6690_sensor*) ;
 struct wf_6690_sensor* wf_to_6690 (struct wf_sensor*) ;

__attribute__((used)) static void wf_max6690_release(struct wf_sensor *sr)
{
 struct wf_6690_sensor *max = wf_to_6690(sr);

 kfree(max);
}
