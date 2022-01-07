
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_uncore_box {TYPE_3__* pmu; } ;
struct TYPE_6__ {TYPE_2__* type; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* enable_box ) (struct intel_uncore_box*) ;} ;


 int stub1 (struct intel_uncore_box*) ;

__attribute__((used)) static inline void uncore_enable_box(struct intel_uncore_box *box)
{
 if (box->pmu->type->ops->enable_box)
  box->pmu->type->ops->enable_box(box);
}
