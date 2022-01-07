
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct hvc_struct {int kref; } ;
struct hv_ops {int dummy; } ;
struct TYPE_3__ {int index; } ;


 int MAX_NR_HVC_CONSOLES ;
 struct hv_ops const** cons_ops ;
 int destroy_hvc_struct ;
 TYPE_1__ hvc_con_driver ;
 struct hvc_struct* hvc_get_by_index (int) ;
 int kref_put (int *,int ) ;
 int last_hvc ;
 int register_console (TYPE_1__*) ;
 int* vtermnos ;

int hvc_instantiate(uint32_t vtermno, int index, const struct hv_ops *ops)
{
 struct hvc_struct *hp;

 if (index < 0 || index >= MAX_NR_HVC_CONSOLES)
  return -1;

 if (vtermnos[index] != -1)
  return -1;


 hp = hvc_get_by_index(index);
 if (hp) {
  kref_put(&hp->kref, destroy_hvc_struct);
  return -1;
 }

 vtermnos[index] = vtermno;
 cons_ops[index] = ops;


 if (last_hvc < index)
  last_hvc = index;





 if (index == hvc_con_driver.index)
  register_console(&hvc_con_driver);

 return 0;
}
