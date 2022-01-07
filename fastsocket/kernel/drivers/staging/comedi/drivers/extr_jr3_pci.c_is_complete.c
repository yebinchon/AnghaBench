
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jr3_channel {int command_word0; } ;


 scalar_t__ get_s16 (int *) ;

__attribute__((used)) static int is_complete(volatile struct jr3_channel *channel)
{
 return get_s16(&channel->command_word0) == 0;
}
