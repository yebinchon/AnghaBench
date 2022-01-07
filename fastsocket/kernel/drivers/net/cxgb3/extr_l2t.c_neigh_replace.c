
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;
struct l2t_entry {struct neighbour* neigh; } ;


 int neigh_hold (struct neighbour*) ;
 int neigh_release (struct neighbour*) ;

__attribute__((used)) static inline void neigh_replace(struct l2t_entry *e, struct neighbour *n)
{
 neigh_hold(n);
 if (e->neigh)
  neigh_release(e->neigh);
 e->neigh = n;
}
