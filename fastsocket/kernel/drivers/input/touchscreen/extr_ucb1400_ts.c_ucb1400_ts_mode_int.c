
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int UCB_TS_CR ;
 int UCB_TS_CR_MODE_INT ;
 int UCB_TS_CR_TSMX_POW ;
 int UCB_TS_CR_TSMY_GND ;
 int UCB_TS_CR_TSPX_POW ;
 int UCB_TS_CR_TSPY_GND ;
 int ucb1400_reg_write (struct snd_ac97*,int ,int) ;

__attribute__((used)) static inline void ucb1400_ts_mode_int(struct snd_ac97 *ac97)
{
 ucb1400_reg_write(ac97, UCB_TS_CR,
   UCB_TS_CR_TSMX_POW | UCB_TS_CR_TSPX_POW |
   UCB_TS_CR_TSMY_GND | UCB_TS_CR_TSPY_GND |
   UCB_TS_CR_MODE_INT);
}
