
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int xpc_discovery () ;
 int xpc_discovery_exited ;
 int xpc_part ;

__attribute__((used)) static int
xpc_initiate_discovery(void *ignore)
{
 xpc_discovery();

 dev_dbg(xpc_part, "discovery thread is exiting\n");


 complete(&xpc_discovery_exited);
 return 0;
}
