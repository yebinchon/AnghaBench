
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencomm_handle {int dummy; } ;
struct evtchn_op {int dummy; } ;


 int EINVAL ;
 int xencomm_arch_hypercall_event_channel_op (int,struct xencomm_handle*) ;
 struct xencomm_handle* xencomm_map_no_alloc (void*,int) ;

int
xencomm_hypercall_event_channel_op(int cmd, void *op)
{
 struct xencomm_handle *desc;
 desc = xencomm_map_no_alloc(op, sizeof(struct evtchn_op));
 if (desc == ((void*)0))
  return -EINVAL;

 return xencomm_arch_hypercall_event_channel_op(cmd, desc);
}
