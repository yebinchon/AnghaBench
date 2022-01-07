
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_host_parameter {int (* cb ) (struct hpsb_host*,void*) ;void* data; } ;


 int class_for_each_device (int *,int *,struct per_host_parameter*,int ) ;
 int hpsb_host_class ;
 int per_host ;

int nodemgr_for_each_host(void *data, int (*cb)(struct hpsb_host *, void *))
{
 struct per_host_parameter p;

 p.cb = cb;
 p.data = data;
 return class_for_each_device(&hpsb_host_class, ((void*)0), &p, per_host);
}
