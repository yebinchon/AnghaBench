
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int creg_timeout; } ;
struct TYPE_4__ {int lock; scalar_t__ active; TYPE_1__ creg_stats; struct creg_cmd* active_cmd; } ;
struct rsxx_cardinfo {TYPE_2__ creg_ctrl; } ;
struct creg_cmd {int (* cb ) (struct rsxx_cardinfo*,struct creg_cmd*,int ) ;} ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int ETIMEDOUT ;
 int creg_cmd_pool ;
 int creg_kick_queue (struct rsxx_cardinfo*) ;
 int dev_warn (int ,char*) ;
 int kmem_cache_free (int ,struct creg_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rsxx_cardinfo*,struct creg_cmd*,int ) ;

__attribute__((used)) static void creg_cmd_timed_out(unsigned long data)
{
 struct rsxx_cardinfo *card = (struct rsxx_cardinfo *) data;
 struct creg_cmd *cmd;

 spin_lock(&card->creg_ctrl.lock);
 cmd = card->creg_ctrl.active_cmd;
 card->creg_ctrl.active_cmd = ((void*)0);
 spin_unlock(&card->creg_ctrl.lock);

 if (cmd == ((void*)0)) {
  card->creg_ctrl.creg_stats.creg_timeout++;
  dev_warn(CARD_TO_DEV(card),
   "No active command associated with timeout!\n");
  return;
 }

 if (cmd->cb)
  cmd->cb(card, cmd, -ETIMEDOUT);

 kmem_cache_free(creg_cmd_pool, cmd);


 spin_lock(&card->creg_ctrl.lock);
 card->creg_ctrl.active = 0;
 creg_kick_queue(card);
 spin_unlock(&card->creg_ctrl.lock);
}
