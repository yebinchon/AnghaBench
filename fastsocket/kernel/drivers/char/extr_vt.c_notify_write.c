
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_notifier_param {unsigned int member_1; struct vc_data* vc; } ;
struct vc_data {int dummy; } ;


 int VT_WRITE ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int vt_notifier_list ;

__attribute__((used)) static void notify_write(struct vc_data *vc, unsigned int unicode)
{
 struct vt_notifier_param param = { .vc = vc, unicode = unicode };
 atomic_notifier_call_chain(&vt_notifier_list, VT_WRITE, &param);
}
