
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct get_freqs {TYPE_2__* policy; int ret; } ;
struct TYPE_6__ {int frequency; } ;
struct TYPE_4__ {int transition_latency; } ;
struct TYPE_5__ {TYPE_1__ cpuinfo; } ;


 size_t SPEEDSTEP_HIGH ;
 size_t SPEEDSTEP_LOW ;
 TYPE_3__* speedstep_freqs ;
 int speedstep_get_freqs (int ,int *,int *,int *,int *) ;
 int speedstep_processor ;
 int speedstep_set_state ;

__attribute__((used)) static void get_freqs_on_cpu(void *_get_freqs)
{
 struct get_freqs *get_freqs = _get_freqs;

 get_freqs->ret =
  speedstep_get_freqs(speedstep_processor,
       &speedstep_freqs[SPEEDSTEP_LOW].frequency,
       &speedstep_freqs[SPEEDSTEP_HIGH].frequency,
       &get_freqs->policy->cpuinfo.transition_latency,
       &speedstep_set_state);
}
