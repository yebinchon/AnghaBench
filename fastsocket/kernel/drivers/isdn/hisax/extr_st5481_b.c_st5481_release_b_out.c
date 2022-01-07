
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st5481_b_out {int urb; } ;
struct st5481_bcs {struct st5481_b_out b_out; } ;


 int DBG (int,char*) ;
 int st5481_release_isocpipes (int ) ;

__attribute__((used)) static void st5481_release_b_out(struct st5481_bcs *bcs)
{
 struct st5481_b_out *b_out = &bcs->b_out;

 DBG(4,"");

 st5481_release_isocpipes(b_out->urb);
}
