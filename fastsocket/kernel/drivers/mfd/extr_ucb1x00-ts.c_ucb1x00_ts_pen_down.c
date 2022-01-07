
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {int ucb; } ;


 int UCB_TS_CR ;
 unsigned int UCB_TS_CR_TSMX_LOW ;
 unsigned int UCB_TS_CR_TSPX_LOW ;
 scalar_t__ machine_is_collie () ;
 unsigned int ucb1x00_reg_read (int ,int ) ;

__attribute__((used)) static inline int ucb1x00_ts_pen_down(struct ucb1x00_ts *ts)
{
 unsigned int val = ucb1x00_reg_read(ts->ucb, UCB_TS_CR);

 if (machine_is_collie())
  return (!(val & (UCB_TS_CR_TSPX_LOW)));
 else
  return (val & (UCB_TS_CR_TSPX_LOW | UCB_TS_CR_TSMX_LOW));
}
