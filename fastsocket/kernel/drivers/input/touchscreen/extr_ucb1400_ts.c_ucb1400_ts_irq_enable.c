
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int UCB_IE_CLEAR ;
 int UCB_IE_FAL ;
 int UCB_IE_TSPX ;
 int ucb1400_reg_write (struct snd_ac97*,int ,int ) ;

__attribute__((used)) static inline void ucb1400_ts_irq_enable(struct snd_ac97 *ac97)
{
 ucb1400_reg_write(ac97, UCB_IE_CLEAR, UCB_IE_TSPX);
 ucb1400_reg_write(ac97, UCB_IE_CLEAR, 0);
 ucb1400_reg_write(ac97, UCB_IE_FAL, UCB_IE_TSPX);
}
