
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct niu_tcam_entry {int valid; } ;
struct niu_parent {struct niu_tcam_entry* tcam; } ;
struct niu {struct niu_parent* parent; } ;
struct ethtool_rxnfc {int data; int rule_cnt; } ;


 int EMSGSIZE ;
 int niu_lock_parent (struct niu*,unsigned long) ;
 int niu_unlock_parent (struct niu*,unsigned long) ;
 int tcam_get_index (struct niu*,int) ;
 int tcam_get_size (struct niu*) ;

__attribute__((used)) static int niu_get_ethtool_tcam_all(struct niu *np,
        struct ethtool_rxnfc *nfc,
        u32 *rule_locs)
{
 struct niu_parent *parent = np->parent;
 struct niu_tcam_entry *tp;
 int i, idx, cnt;
 unsigned long flags;
 int ret = 0;


 nfc->data = tcam_get_size(np);

 niu_lock_parent(np, flags);
 for (cnt = 0, i = 0; i < nfc->data; i++) {
  idx = tcam_get_index(np, i);
  tp = &parent->tcam[idx];
  if (!tp->valid)
   continue;
  if (cnt == nfc->rule_cnt) {
   ret = -EMSGSIZE;
   break;
  }
  rule_locs[cnt] = i;
  cnt++;
 }
 niu_unlock_parent(np, flags);

 return ret;
}
