
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt77105_stats {int rx_hec_errors; int rx_cells; int tx_cells; int symbol_errors; } ;
struct idt77105_priv {struct idt77105_stats stats; struct atm_dev* dev; struct idt77105_priv* next; } ;
struct atm_dev {int dummy; } ;


 int DPRINTK (char*) ;
 int IDT77105_CTRSEL_RCC ;
 int IDT77105_CTRSEL_RHEC ;
 int IDT77105_CTRSEL_SEC ;
 int IDT77105_CTRSEL_TCC ;
 scalar_t__ IDT77105_STATS_TIMER_PERIOD ;
 scalar_t__ get_counter (struct atm_dev*,int ) ;
 struct idt77105_priv* idt77105_all ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int start_timer ;
 int stats_timer ;

__attribute__((used)) static void idt77105_stats_timer_func(unsigned long dummy)
{
 struct idt77105_priv *walk;
 struct atm_dev *dev;
 struct idt77105_stats *stats;

        DPRINTK("IDT77105 gathering statistics\n");
 for (walk = idt77105_all; walk; walk = walk->next) {
  dev = walk->dev;

  stats = &walk->stats;
                stats->symbol_errors += get_counter(dev, IDT77105_CTRSEL_SEC);
                stats->tx_cells += get_counter(dev, IDT77105_CTRSEL_TCC);
                stats->rx_cells += get_counter(dev, IDT77105_CTRSEL_RCC);
                stats->rx_hec_errors += get_counter(dev, IDT77105_CTRSEL_RHEC);
 }
        if (!start_timer) mod_timer(&stats_timer,jiffies+IDT77105_STATS_TIMER_PERIOD);
}
