
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_d_out {int urb; } ;
struct st5481_adapter {struct st5481_d_out d_out; } ;


 int DBG (int,char*) ;
 int st5481_release_isocpipes (int ) ;

__attribute__((used)) static void st5481_release_d_out(struct st5481_adapter *adapter)
{
 struct st5481_d_out *d_out = &adapter->d_out;

 DBG(2,"");

 st5481_release_isocpipes(d_out->urb);
}
