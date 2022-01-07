
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIO_MSG_EVENT (int,char*) ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 int ccw_bus_type ;
 int purge_fn ;

int ccw_purge_blacklisted(void)
{
 CIO_MSG_EVENT(2, "ccw: purging blacklisted devices\n");
 bus_for_each_dev(&ccw_bus_type, ((void*)0), ((void*)0), purge_fn);
 return 0;
}
