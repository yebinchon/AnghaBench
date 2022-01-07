
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ap_data {int * proc; } ;
struct TYPE_3__ {int * proc; struct ap_data* ap; } ;
typedef TYPE_1__ local_info_t ;


 int ap_control_proc_fops ;
 int ap_debug_proc_fops ;
 int prism2_ap_proc_fops ;
 int proc_create_data (char*,int ,int *,int *,struct ap_data*) ;

void hostap_init_ap_proc(local_info_t *local)
{
 struct ap_data *ap = local->ap;

 ap->proc = local->proc;
 if (ap->proc == ((void*)0))
  return;


 proc_create_data("ap_debug", 0, ap->proc, &ap_debug_proc_fops, ap);



 proc_create_data("ap_control", 0, ap->proc, &ap_control_proc_fops, ap);
 proc_create_data("ap", 0, ap->proc, &prism2_ap_proc_fops, ap);


}
