
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int UCB_TS_CR ;
 unsigned short UCB_TS_CR_TSMX_LOW ;
 unsigned short UCB_TS_CR_TSPX_LOW ;
 unsigned short ucb1400_reg_read (struct snd_ac97*,int ) ;

__attribute__((used)) static inline int ucb1400_ts_pen_up(struct snd_ac97 *ac97)
{
 unsigned short val = ucb1400_reg_read(ac97, UCB_TS_CR);

 return val & (UCB_TS_CR_TSPX_LOW | UCB_TS_CR_TSMX_LOW);
}
