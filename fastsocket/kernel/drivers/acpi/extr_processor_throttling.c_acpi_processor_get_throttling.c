
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* acpi_processor_get_throttling ) (struct acpi_processor*) ;} ;
struct TYPE_5__ {int throttling; } ;
struct acpi_processor {TYPE_2__ throttling; int id; TYPE_1__ flags; } ;
typedef int cpumask_var_t ;
struct TYPE_7__ {int cpus_allowed; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_cpumask_var (int *,int ) ;
 int cpumask_copy (int ,int *) ;
 int cpumask_of (int ) ;
 TYPE_3__* current ;
 int free_cpumask_var (int ) ;
 int set_cpus_allowed_ptr (TYPE_3__*,int ) ;
 int stub1 (struct acpi_processor*) ;

__attribute__((used)) static int acpi_processor_get_throttling(struct acpi_processor *pr)
{
 cpumask_var_t saved_mask;
 int ret;

 if (!pr)
  return -EINVAL;

 if (!pr->flags.throttling)
  return -ENODEV;

 if (!alloc_cpumask_var(&saved_mask, GFP_KERNEL))
  return -ENOMEM;




 cpumask_copy(saved_mask, &current->cpus_allowed);

 set_cpus_allowed_ptr(current, cpumask_of(pr->id));
 ret = pr->throttling.acpi_processor_get_throttling(pr);

 set_cpus_allowed_ptr(current, saved_mask);
 free_cpumask_var(saved_mask);

 return ret;
}
