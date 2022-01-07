
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cardstate {int channels; int lock; int temp_at_states; TYPE_1__* bcs; } ;
struct at_state_t {int cid; int list; } ;
struct TYPE_2__ {struct at_state_t at_state; } ;


 int GFP_ATOMIC ;
 int gigaset_at_init (struct at_state_t*,int *,struct cardstate*,int) ;
 scalar_t__ gigaset_get_channel (TYPE_1__*) ;
 struct at_state_t* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct at_state_t *get_free_channel(struct cardstate *cs,
        int cid)




{
 unsigned long flags;
 int i;
 struct at_state_t *ret;

 for (i = 0; i < cs->channels; ++i)
  if (gigaset_get_channel(cs->bcs + i)) {
   ret = &cs->bcs[i].at_state;
   ret->cid = cid;
   return ret;
  }

 spin_lock_irqsave(&cs->lock, flags);
 ret = kmalloc(sizeof(struct at_state_t), GFP_ATOMIC);
 if (ret) {
  gigaset_at_init(ret, ((void*)0), cs, cid);
  list_add(&ret->list, &cs->temp_at_states);
 }
 spin_unlock_irqrestore(&cs->lock, flags);
 return ret;
}
