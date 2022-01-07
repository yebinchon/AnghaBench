
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int event_base; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;


 int rdmsrl (int ,int ) ;

__attribute__((used)) static u64 uncore_msr_read_counter(struct intel_uncore_box *box, struct perf_event *event)
{
 u64 count;

 rdmsrl(event->hw.event_base, count);

 return count;
}
