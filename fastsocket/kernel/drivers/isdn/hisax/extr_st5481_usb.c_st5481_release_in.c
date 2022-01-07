
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_in {int urb; } ;


 int DBG (int,char*) ;
 int st5481_release_isocpipes (int ) ;

void st5481_release_in(struct st5481_in *in)
{
 DBG(2,"");

 st5481_release_isocpipes(in->urb);
}
