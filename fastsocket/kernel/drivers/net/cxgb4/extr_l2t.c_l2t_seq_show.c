
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct l2t_entry {scalar_t__ state; int vlan; int lock; TYPE_2__* neigh; int refcnt; int lport; int dmac; int idx; scalar_t__ v6; int addr; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {char* name; } ;


 scalar_t__ L2T_STATE_SWITCHING ;
 void* SEQ_START_TOKEN ;
 int VLAN_VID_MASK ;
 int atomic_read (int *) ;
 int l2e_state (struct l2t_entry*) ;
 int seq_printf (struct seq_file*,char*,int ,char*,int ,int,int ,int ,int ,int ,char*) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,int ) ;
 int vlan_prio (struct l2t_entry*) ;

__attribute__((used)) static int l2t_seq_show(struct seq_file *seq, void *v)
{
 if (v == SEQ_START_TOKEN)
  seq_puts(seq, " Idx IP address                "
    "Ethernet address  VLAN/P LP State Users Port\n");
 else {
  char ip[60];
  struct l2t_entry *e = v;

  spin_lock_bh(&e->lock);
  if (e->state == L2T_STATE_SWITCHING)
   ip[0] = '\0';
  else
   sprintf(ip, e->v6 ? "%pI6c" : "%pI4", e->addr);
  seq_printf(seq, "%4u %-25s %17pM %4d %u %2u   %c   %5u %s\n",
      e->idx, ip, e->dmac,
      e->vlan & VLAN_VID_MASK, vlan_prio(e), e->lport,
      l2e_state(e), atomic_read(&e->refcnt),
      e->neigh ? e->neigh->dev->name : "");
  spin_unlock_bh(&e->lock);
 }
 return 0;
}
