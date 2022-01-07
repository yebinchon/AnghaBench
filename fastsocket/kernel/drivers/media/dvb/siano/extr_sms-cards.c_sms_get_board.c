
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sms_board {int dummy; } ;


 unsigned int ARRAY_SIZE (struct sms_board*) ;
 int BUG_ON (int) ;
 struct sms_board* sms_boards ;

struct sms_board *sms_get_board(unsigned id)
{
 BUG_ON(id >= ARRAY_SIZE(sms_boards));

 return &sms_boards[id];
}
