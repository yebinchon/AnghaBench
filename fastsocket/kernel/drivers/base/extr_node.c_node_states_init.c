
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_NODE_STATES ;
 int node_class ;
 int * node_state_attr ;
 int sysdev_class_create_file (int *,int ) ;

__attribute__((used)) static int node_states_init(void)
{
 int i;
 int err = 0;

 for (i = 0; i < NR_NODE_STATES; i++) {
  int ret;
  ret = sysdev_class_create_file(&node_class, node_state_attr[i]);
  if (!err)
   err = ret;
 }
 return err;
}
