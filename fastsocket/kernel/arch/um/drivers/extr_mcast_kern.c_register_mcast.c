
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mcast_transport ;
 int register_transport (int *) ;

__attribute__((used)) static int register_mcast(void)
{
 register_transport(&mcast_transport);
 return 0;
}
