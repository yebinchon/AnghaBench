
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int slcomp; int cbuff; int xbuff; int rbuff; } ;


 int kfree (int ) ;
 int slhc_free (int ) ;
 int xchg (int *,int *) ;

__attribute__((used)) static void sl_free_bufs(struct slip *sl)
{

 kfree(xchg(&sl->rbuff, ((void*)0)));
 kfree(xchg(&sl->xbuff, ((void*)0)));




}
