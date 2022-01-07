
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {unsigned int nud_state; int ha; } ;
struct l2t_entry {int lock; int state; int dmac; struct neighbour* neigh; } ;


 int L2T_STATE_RESOLVING ;
 int L2T_STATE_STALE ;
 int L2T_STATE_VALID ;
 unsigned int NUD_CONNECTED ;
 unsigned int NUD_VALID ;
 scalar_t__ memcmp (int ,int ,int) ;
 int neigh_replace (struct l2t_entry*,struct neighbour*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void reuse_entry(struct l2t_entry *e, struct neighbour *neigh)
{
 unsigned int nud_state;

 spin_lock(&e->lock);
 if (neigh != e->neigh)
  neigh_replace(e, neigh);
 nud_state = neigh->nud_state;
 if (memcmp(e->dmac, neigh->ha, sizeof(e->dmac)) ||
     !(nud_state & NUD_VALID))
  e->state = L2T_STATE_RESOLVING;
 else if (nud_state & NUD_CONNECTED)
  e->state = L2T_STATE_VALID;
 else
  e->state = L2T_STATE_STALE;
 spin_unlock(&e->lock);
}
