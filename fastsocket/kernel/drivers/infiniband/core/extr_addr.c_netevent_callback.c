
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct neighbour {int nud_state; } ;


 unsigned long NETEVENT_NEIGH_UPDATE ;
 int NUD_VALID ;
 int jiffies ;
 int set_timeout (int ) ;

__attribute__((used)) static int netevent_callback(struct notifier_block *self, unsigned long event,
 void *ctx)
{
 if (event == NETEVENT_NEIGH_UPDATE) {
  struct neighbour *neigh = ctx;

  if (neigh->nud_state & NUD_VALID) {
   set_timeout(jiffies);
  }
 }
 return 0;
}
