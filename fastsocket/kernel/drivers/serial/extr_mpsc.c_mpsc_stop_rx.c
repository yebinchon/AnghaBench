
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int line; } ;
struct mpsc_port_info {int MPSC_CHR_2_m; scalar_t__ mpsc_base; scalar_t__ mirror_regs; } ;


 scalar_t__ MPSC_CHR_2 ;
 int MPSC_CHR_2_RA ;
 int SDMA_SDCM_AR ;
 int mpsc_sdma_cmd (struct mpsc_port_info*,int ) ;
 int pr_debug (char*,int ) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpsc_stop_rx(struct uart_port *port)
{
 struct mpsc_port_info *pi = (struct mpsc_port_info *)port;

 pr_debug("mpsc_stop_rx[%d]: Stopping...\n", port->line);

 if (pi->mirror_regs) {
  writel(pi->MPSC_CHR_2_m | MPSC_CHR_2_RA,
    pi->mpsc_base + MPSC_CHR_2);

  udelay(100);
 } else {
  writel(readl(pi->mpsc_base + MPSC_CHR_2) | MPSC_CHR_2_RA,
    pi->mpsc_base + MPSC_CHR_2);

  while (readl(pi->mpsc_base + MPSC_CHR_2) & MPSC_CHR_2_RA)
   udelay(10);
 }

 mpsc_sdma_cmd(pi, SDMA_SDCM_AR);
}
