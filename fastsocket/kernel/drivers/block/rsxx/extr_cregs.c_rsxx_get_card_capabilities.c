
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsxx_cardinfo {int dummy; } ;


 int CREG_ADD_CAPABILITIES ;
 int rsxx_creg_read (struct rsxx_cardinfo*,int ,int,int *,int ) ;

int rsxx_get_card_capabilities(struct rsxx_cardinfo *card,
       u32 *capabilities)
{
 return rsxx_creg_read(card, CREG_ADD_CAPABILITIES,
      sizeof(*capabilities), capabilities, 0);
}
