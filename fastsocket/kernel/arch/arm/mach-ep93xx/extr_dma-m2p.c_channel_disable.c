
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m2p_channel {int clk; scalar_t__ base; } ;


 scalar_t__ M2P_CONTROL ;
 int M2P_CONTROL_NFB_IRQ_EN ;
 int M2P_CONTROL_STALL_IRQ_EN ;
 scalar_t__ STATE_ON ;
 scalar_t__ STATE_STALL ;
 int clk_disable (int ) ;
 int cpu_relax () ;
 scalar_t__ m2p_channel_state (struct m2p_channel*) ;
 int m2p_set_control (struct m2p_channel*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void channel_disable(struct m2p_channel *ch)
{
 u32 v;

 v = readl(ch->base + M2P_CONTROL);
 v &= ~(M2P_CONTROL_STALL_IRQ_EN | M2P_CONTROL_NFB_IRQ_EN);
 m2p_set_control(ch, v);

 while (m2p_channel_state(ch) == STATE_ON)
  cpu_relax();

 m2p_set_control(ch, 0x0);

 while (m2p_channel_state(ch) == STATE_STALL)
  cpu_relax();

 clk_disable(ch->clk);
}
