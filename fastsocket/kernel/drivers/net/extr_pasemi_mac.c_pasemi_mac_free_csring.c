
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac_csring {int fun; int chan; int * events; } ;


 int pasemi_dma_free_chan (int *) ;
 int pasemi_dma_free_flag (int ) ;
 int pasemi_dma_free_fun (int ) ;
 int pasemi_dma_free_ring (int *) ;
 int pasemi_dma_stop_chan (int *) ;

__attribute__((used)) static void pasemi_mac_free_csring(struct pasemi_mac_csring *csring)
{
 pasemi_dma_stop_chan(&csring->chan);
 pasemi_dma_free_flag(csring->events[0]);
 pasemi_dma_free_flag(csring->events[1]);
 pasemi_dma_free_ring(&csring->chan);
 pasemi_dma_free_chan(&csring->chan);
 pasemi_dma_free_fun(csring->fun);
}
