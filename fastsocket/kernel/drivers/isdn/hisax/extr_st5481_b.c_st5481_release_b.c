
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_bcs {int b_in; } ;


 int DBG (int,char*) ;
 int st5481_release_b_out (struct st5481_bcs*) ;
 int st5481_release_in (int *) ;

void st5481_release_b(struct st5481_bcs *bcs)
{
 DBG(4,"");

 st5481_release_in(&bcs->b_in);
 st5481_release_b_out(bcs);
}
