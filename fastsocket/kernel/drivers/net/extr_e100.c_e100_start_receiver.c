
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx {int dma_addr; scalar_t__ skb; } ;
struct nic {scalar_t__ ru_running; struct rx* rxs; } ;


 scalar_t__ RU_RUNNING ;
 scalar_t__ RU_SUSPENDED ;
 int e100_exec_cmd (struct nic*,int ,int ) ;
 int ruc_start ;

__attribute__((used)) static inline void e100_start_receiver(struct nic *nic, struct rx *rx)
{
 if (!nic->rxs) return;
 if (RU_SUSPENDED != nic->ru_running) return;


 if (!rx) rx = nic->rxs;


 if (rx->skb) {
  e100_exec_cmd(nic, ruc_start, rx->dma_addr);
  nic->ru_running = RU_RUNNING;
 }
}
