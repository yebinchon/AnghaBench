
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpar_connection {int * msg_stack_head; } ;



__attribute__((used)) static inline int veth_stack_is_empty(struct veth_lpar_connection *cnx)
{
 return cnx->msg_stack_head == ((void*)0);
}
