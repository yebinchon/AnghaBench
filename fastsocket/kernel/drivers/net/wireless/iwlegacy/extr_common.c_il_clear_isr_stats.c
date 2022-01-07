
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int isr_stats; } ;


 int memset (int *,int ,int) ;

void
il_clear_isr_stats(struct il_priv *il)
{
 memset(&il->isr_stats, 0, sizeof(il->isr_stats));
}
