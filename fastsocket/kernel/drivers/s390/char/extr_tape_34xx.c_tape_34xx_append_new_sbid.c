
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_34xx_block_id {int dummy; } ;
struct tape_34xx_sbid {int list; struct tape_34xx_block_id bid; } ;
struct list_head {int dummy; } ;


 int GFP_ATOMIC ;
 struct tape_34xx_sbid* kmalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static inline void
tape_34xx_append_new_sbid(struct tape_34xx_block_id bid, struct list_head *l)
{
 struct tape_34xx_sbid * new_sbid;

 new_sbid = kmalloc(sizeof(*new_sbid), GFP_ATOMIC);
 if (!new_sbid)
  return;

 new_sbid->bid = bid;
 list_add(&new_sbid->list, l);
}
