
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct perf_event {int dummy; } ;
struct intel_uncore_box {TYPE_3__* pmu; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* read_counter ) (struct intel_uncore_box*,struct perf_event*) ;} ;


 int stub1 (struct intel_uncore_box*,struct perf_event*) ;

__attribute__((used)) static inline u64 uncore_read_counter(struct intel_uncore_box *box,
    struct perf_event *event)
{
 return box->pmu->type->ops->read_counter(box, event);
}
