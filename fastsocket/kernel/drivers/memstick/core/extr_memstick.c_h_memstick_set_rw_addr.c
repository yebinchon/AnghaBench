
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_request {int dummy; } ;
struct memstick_dev {int mrq_complete; struct memstick_request current_mrq; int reg_addr; } ;


 int EAGAIN ;
 int MS_TPC_SET_RW_REG_ADRS ;
 int complete (int *) ;
 int memstick_init_req (struct memstick_request*,int ,char*,int) ;

__attribute__((used)) static int h_memstick_set_rw_addr(struct memstick_dev *card,
      struct memstick_request **mrq)
{
 if (!(*mrq)) {
  memstick_init_req(&card->current_mrq, MS_TPC_SET_RW_REG_ADRS,
      (char *)&card->reg_addr,
      sizeof(card->reg_addr));
  *mrq = &card->current_mrq;
  return 0;
 } else {
  complete(&card->mrq_complete);
  return -EAGAIN;
 }
}
