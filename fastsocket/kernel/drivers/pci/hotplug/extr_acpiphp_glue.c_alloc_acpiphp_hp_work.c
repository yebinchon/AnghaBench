
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpiphp_hp_work {int work; void* context; int type; int handle; } ;
typedef int acpi_handle ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int kacpi_hotplug_wq ;
 int kfree (struct acpiphp_hp_work*) ;
 struct acpiphp_hp_work* kmalloc (int,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void alloc_acpiphp_hp_work(acpi_handle handle, u32 type,
      void *context,
      void (*func)(struct work_struct *work))
{
 struct acpiphp_hp_work *hp_work;
 int ret;

 hp_work = kmalloc(sizeof(*hp_work), GFP_KERNEL);
 if (!hp_work)
  return;

 hp_work->handle = handle;
 hp_work->type = type;
 hp_work->context = context;

 INIT_WORK(&hp_work->work, func);
 ret = queue_work(kacpi_hotplug_wq, &hp_work->work);
 if (!ret)
  kfree(hp_work);
}
