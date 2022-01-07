
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_adapter {int d_in; } ;


 int DBG (int,char*) ;
 int st5481_release_d_out (struct st5481_adapter*) ;
 int st5481_release_in (int *) ;

void st5481_release_d(struct st5481_adapter *adapter)
{
 DBG(2,"");

 st5481_release_in(&adapter->d_in);
 st5481_release_d_out(adapter);
}
