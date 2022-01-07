
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_cache {int active_stripes; } ;


 int atomic_read (int *) ;

__attribute__((used)) static int sc_active(struct stripe_cache *sc)
{
 return atomic_read(&sc->active_stripes);
}
