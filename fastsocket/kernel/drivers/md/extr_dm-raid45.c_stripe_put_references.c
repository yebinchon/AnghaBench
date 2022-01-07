
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe {int sc; } ;


 int RS (int ) ;
 int io_put (int ) ;
 int stripe_io_put (struct stripe*) ;
 int stripe_put (struct stripe*) ;

__attribute__((used)) static void stripe_put_references(struct stripe *stripe)
{
 stripe_io_put(stripe);
 stripe_put(stripe);
 io_put(RS(stripe->sc));
}
