
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_msg {struct veth_msg* next; } ;
struct veth_lpar_connection {struct veth_msg* msg_stack_head; } ;



__attribute__((used)) static inline struct veth_msg *veth_stack_pop(struct veth_lpar_connection *cnx)
{
 struct veth_msg *msg;

 msg = cnx->msg_stack_head;
 if (msg)
  cnx->msg_stack_head = cnx->msg_stack_head->next;

 return msg;
}
