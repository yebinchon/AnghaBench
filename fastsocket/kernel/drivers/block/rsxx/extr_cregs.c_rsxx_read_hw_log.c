
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmp; } ;
struct rsxx_cardinfo {TYPE_1__ log; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int CREG_ADD_LOG ;
 int CREG_OP_READ ;
 int creg_queue_cmd (struct rsxx_cardinfo*,int ,int ,int,int ,int,int ,int *) ;
 int dev_err (int ,char*) ;
 int read_hw_log_done ;

int rsxx_read_hw_log(struct rsxx_cardinfo *card)
{
 int st;

 st = creg_queue_cmd(card, CREG_OP_READ, CREG_ADD_LOG,
       sizeof(card->log.tmp), card->log.tmp,
       1, read_hw_log_done, ((void*)0));
 if (st)
  dev_err(CARD_TO_DEV(card),
   "Failed getting log text\n");

 return st;
}
