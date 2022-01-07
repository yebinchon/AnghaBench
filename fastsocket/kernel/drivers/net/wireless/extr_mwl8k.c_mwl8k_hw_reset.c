
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_priv {scalar_t__ regs; } ;


 int MWL8K_H2A_INT_RESET ;
 scalar_t__ MWL8K_HIU_H2A_INTERRUPT_EVENTS ;
 int iowrite32 (int ,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static void mwl8k_hw_reset(struct mwl8k_priv *priv)
{
 iowrite32(MWL8K_H2A_INT_RESET,
  priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
 iowrite32(MWL8K_H2A_INT_RESET,
  priv->regs + MWL8K_HIU_H2A_INTERRUPT_EVENTS);
 msleep(20);
}
