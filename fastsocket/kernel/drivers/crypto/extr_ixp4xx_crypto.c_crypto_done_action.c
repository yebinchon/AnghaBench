
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int RECV_QID ;
 int crypto_done_tasklet ;
 int one_packet (int ) ;
 int qmgr_get_entry (int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void crypto_done_action(unsigned long arg)
{
 int i;

 for(i=0; i<4; i++) {
  dma_addr_t phys = qmgr_get_entry(RECV_QID);
  if (!phys)
   return;
  one_packet(phys);
 }
 tasklet_schedule(&crypto_done_tasklet);
}
