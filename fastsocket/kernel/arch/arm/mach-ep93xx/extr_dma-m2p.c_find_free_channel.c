
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m2p_channel {struct ep93xx_dma_m2p_client* client; scalar_t__ base; } ;
struct ep93xx_dma_m2p_client {int flags; scalar_t__ name; } ;


 int EBUSY ;
 int ENODEV ;
 int EP93XX_DMA_M2P_PORT_MASK ;
 int EP93XX_DMA_M2P_RX ;
 struct m2p_channel* ERR_PTR (int ) ;
 struct m2p_channel* m2p_rx ;
 struct m2p_channel* m2p_tx ;
 int pr_warning (char*,char*) ;

__attribute__((used)) static struct m2p_channel *find_free_channel(struct ep93xx_dma_m2p_client *cl)
{
 struct m2p_channel *ch;
 int i;

 if (cl->flags & EP93XX_DMA_M2P_RX)
  ch = m2p_rx;
 else
  ch = m2p_tx;

 for (i = 0; ch[i].base; i++) {
  struct ep93xx_dma_m2p_client *client;

  client = ch[i].client;
  if (client != ((void*)0)) {
   int port;

   port = cl->flags & EP93XX_DMA_M2P_PORT_MASK;
   if (port == (client->flags &
         EP93XX_DMA_M2P_PORT_MASK)) {
    pr_warning("DMA channel already used by %s\n",
        cl->name ? : "unknown client");
    return ERR_PTR(-EBUSY);
   }
  }
 }

 for (i = 0; ch[i].base; i++) {
  if (ch[i].client == ((void*)0))
   return ch + i;
 }

 pr_warning("No free DMA channel for %s\n",
     cl->name ? : "unknown client");
 return ERR_PTR(-ENODEV);
}
