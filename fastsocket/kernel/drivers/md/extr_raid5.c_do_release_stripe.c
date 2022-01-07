
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {scalar_t__ bm_seq; int lru; int state; } ;
struct r5conf {scalar_t__ seq_write; TYPE_1__* mddev; scalar_t__ retry_read_aligned; int wait_for_stripe; int inactive_list; int active_stripes; int preread_active_stripes; int handle_list; int plug; int bitmap_list; int delayed_list; } ;
struct TYPE_2__ {int thread; } ;


 int BUG_ON (int) ;
 scalar_t__ IO_THRESHOLD ;
 int STRIPE_BIT_DELAY ;
 int STRIPE_DELAYED ;
 int STRIPE_EXPANDING ;
 int STRIPE_HANDLE ;
 int STRIPE_PREREAD_ACTIVE ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int md_wakeup_thread (int ) ;
 int plugger_set_plug (int *) ;
 int stripe_operations_active (struct stripe_head*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void do_release_stripe(struct r5conf *conf, struct stripe_head *sh)
{
 BUG_ON(!list_empty(&sh->lru));
 BUG_ON(atomic_read(&conf->active_stripes)==0);
 if (test_bit(STRIPE_HANDLE, &sh->state)) {
  if (test_bit(STRIPE_DELAYED, &sh->state) &&
      !test_bit(STRIPE_PREREAD_ACTIVE, &sh->state)) {
   list_add_tail(&sh->lru, &conf->delayed_list);
   plugger_set_plug(&conf->plug);
  } else if (test_bit(STRIPE_BIT_DELAY, &sh->state) &&
      sh->bm_seq - conf->seq_write > 0) {
   list_add_tail(&sh->lru, &conf->bitmap_list);
   plugger_set_plug(&conf->plug);
  } else {
   clear_bit(STRIPE_DELAYED, &sh->state);
   clear_bit(STRIPE_BIT_DELAY, &sh->state);
   list_add_tail(&sh->lru, &conf->handle_list);
  }
  md_wakeup_thread(conf->mddev->thread);
 } else {
  BUG_ON(stripe_operations_active(sh));
  if (test_and_clear_bit(STRIPE_PREREAD_ACTIVE, &sh->state))
   if (atomic_dec_return(&conf->preread_active_stripes)
       < IO_THRESHOLD)
    md_wakeup_thread(conf->mddev->thread);
  atomic_dec(&conf->active_stripes);
  if (!test_bit(STRIPE_EXPANDING, &sh->state)) {
   list_add_tail(&sh->lru, &conf->inactive_list);
   wake_up(&conf->wait_for_stripe);
   if (conf->retry_read_aligned)
    md_wakeup_thread(conf->mddev->thread);
  }
 }
}
