
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_data {int * mcast_addr; } ;


 int kfree (int *) ;

__attribute__((used)) static void mcast_remove(void *data)
{
 struct mcast_data *pri = data;

 kfree(pri->mcast_addr);
 pri->mcast_addr = ((void*)0);
}
