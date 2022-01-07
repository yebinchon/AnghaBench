
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int sc; } ;


 int RS (int ) ;
 int io_get (int ) ;
 int stripe_get (struct stripe*) ;
 int stripe_io_get (struct stripe*) ;

__attribute__((used)) static void stripe_get_references(struct stripe *stripe, unsigned p)
{





 io_get(RS(stripe->sc));
 stripe_get(stripe);
 stripe_io_get(stripe);
}
