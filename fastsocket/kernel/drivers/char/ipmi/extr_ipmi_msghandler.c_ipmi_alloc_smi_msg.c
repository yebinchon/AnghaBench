
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_smi_msg {int * user_data; int done; } ;


 int GFP_ATOMIC ;
 int atomic_inc (int *) ;
 int free_smi_msg ;
 struct ipmi_smi_msg* kmalloc (int,int ) ;
 int smi_msg_inuse_count ;

struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
{
 struct ipmi_smi_msg *rv;
 rv = kmalloc(sizeof(struct ipmi_smi_msg), GFP_ATOMIC);
 if (rv) {
  rv->done = free_smi_msg;
  rv->user_data = ((void*)0);
  atomic_inc(&smi_msg_inuse_count);
 }
 return rv;
}
