
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mad_rmpp_recv {int ah; int comp; } ;


 int deref_rmpp_recv (struct mad_rmpp_recv*) ;
 int ib_destroy_ah (int ) ;
 int kfree (struct mad_rmpp_recv*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void destroy_rmpp_recv(struct mad_rmpp_recv *rmpp_recv)
{
 deref_rmpp_recv(rmpp_recv);
 wait_for_completion(&rmpp_recv->comp);
 ib_destroy_ah(rmpp_recv->ah);
 kfree(rmpp_recv);
}
