
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int vc_cols; int vc_rows; int vc_screenbuf; int vc_screenbuf_size; int * vc_uni_pagedir_loc; } ;
struct TYPE_2__ {struct vc_data* d; int SAK_work; } ;


 int CAP_SYS_RESOURCE ;
 int ENOMEM ;
 int ENXIO ;
 int EPERM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned int MAX_NR_CONSOLES ;
 unsigned int MAX_NR_USER_CONSOLES ;
 int VT_ALLOCATE ;
 int WARN_CONSOLE_UNLOCKED () ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int capable (int ) ;
 int con_set_default_unimap (struct vc_data*) ;
 int kfree (struct vc_data*) ;
 int kmalloc (int ,int ) ;
 struct vc_data* kzalloc (int,int ) ;
 int vc_SAK ;
 TYPE_1__* vc_cons ;
 int vc_init (struct vc_data*,int ,int ,int) ;
 int vcs_make_sysfs (unsigned int) ;
 int visual_init (struct vc_data*,unsigned int,int) ;
 int vt_notifier_list ;

int vc_allocate(unsigned int currcons)
{
 WARN_CONSOLE_UNLOCKED();

 if (currcons >= MAX_NR_CONSOLES)
  return -ENXIO;
 if (!vc_cons[currcons].d) {
     struct vc_data *vc;
     struct vt_notifier_param param;


     if (currcons >= MAX_NR_USER_CONSOLES && !capable(CAP_SYS_RESOURCE))
       return -EPERM;







     param.vc = vc = kzalloc(sizeof(struct vc_data), GFP_KERNEL);
     if (!vc)
  return -ENOMEM;
     vc_cons[currcons].d = vc;
     INIT_WORK(&vc_cons[currcons].SAK_work, vc_SAK);
     visual_init(vc, currcons, 1);
     if (!*vc->vc_uni_pagedir_loc)
  con_set_default_unimap(vc);
     vc->vc_screenbuf = kmalloc(vc->vc_screenbuf_size, GFP_KERNEL);
     if (!vc->vc_screenbuf) {
  kfree(vc);
  vc_cons[currcons].d = ((void*)0);
  return -ENOMEM;
     }
     vc_init(vc, vc->vc_rows, vc->vc_cols, 1);
     vcs_make_sysfs(currcons);
     atomic_notifier_call_chain(&vt_notifier_list, VT_ALLOCATE, &param);
 }
 return 0;
}
