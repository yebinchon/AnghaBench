
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct fw_card {int link; TYPE_1__* driver; int guid; void* link_speed; void* max_receive; } ;
struct TYPE_2__ {int (* enable ) (struct fw_card*,void**,int ) ;} ;


 int card_list ;
 int card_mutex ;
 int config_rom_length ;
 void** generate_config_rom (struct fw_card*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fw_card*,void**,int ) ;

int fw_card_add(struct fw_card *card,
  u32 max_receive, u32 link_speed, u64 guid)
{
 u32 *config_rom;
 int ret;

 card->max_receive = max_receive;
 card->link_speed = link_speed;
 card->guid = guid;

 mutex_lock(&card_mutex);

 config_rom = generate_config_rom(card);
 ret = card->driver->enable(card, config_rom, config_rom_length);
 if (ret == 0)
  list_add_tail(&card->link, &card_list);

 mutex_unlock(&card_mutex);

 return ret;
}
