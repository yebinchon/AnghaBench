
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {int dummy; } ;


 int CREG_ADD_CARD_STATE ;
 int rsxx_creg_read (struct rsxx_cardinfo*,int ,int,unsigned int*,int ) ;

int rsxx_get_card_state(struct rsxx_cardinfo *card, unsigned int *state)
{
 return rsxx_creg_read(card, CREG_ADD_CARD_STATE,
      sizeof(*state), state, 0);
}
