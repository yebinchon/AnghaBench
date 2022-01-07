
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_chip {int dummy; } ;


 int LM8323_CMD_SET_ACTIVE ;
 int lm8323_write (struct lm8323_chip*,int,int ,int) ;

__attribute__((used)) static void lm8323_set_active_time(struct lm8323_chip *lm, int time)
{
 lm8323_write(lm, 2, LM8323_CMD_SET_ACTIVE, time >> 2);
}
