
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_map {int dummy; } ;
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct rate_estimator {int maxcps; int cps; int avcps; int interval; int ewma_log; TYPE_1__ timer; } ;


 int GFP_KERNEL ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int idt77252_est_timer ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct rate_estimator* kzalloc (int,int ) ;

__attribute__((used)) static struct rate_estimator *
idt77252_init_est(struct vc_map *vc, int pcr)
{
 struct rate_estimator *est;

 est = kzalloc(sizeof(struct rate_estimator), GFP_KERNEL);
 if (!est)
  return ((void*)0);
 est->maxcps = pcr < 0 ? -pcr : pcr;
 est->cps = est->maxcps;
 est->avcps = est->cps << 5;

 est->interval = 2;
 est->ewma_log = 2;
 init_timer(&est->timer);
 est->timer.data = (unsigned long)vc;
 est->timer.function = idt77252_est_timer;

 est->timer.expires = jiffies + ((HZ / 4) << est->interval);
 add_timer(&est->timer);

 return est;
}
