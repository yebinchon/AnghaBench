
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jr3_channel {int command_word0; } ;


 int set_s16 (int *,int) ;

__attribute__((used)) static void use_offset(volatile struct jr3_channel *channel, short offset_num)
{
 set_s16(&channel->command_word0, 0x0600 + (offset_num & 0x000f));
}
