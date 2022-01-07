
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spider_net_card {int ignore_rx_ramfull; TYPE_1__* netdev; int napi; int num_rx_ints; } ;
struct TYPE_2__ {int dev; } ;
 int SPIDER_NET_GHIINT1STS ;
 int SPIDER_NET_GHIINT2STS ;
 int dev_err (int *,char*,...) ;
 int napi_schedule (int *) ;
 scalar_t__ net_ratelimit () ;
 scalar_t__ netif_msg_intr (struct spider_net_card*) ;
 int spider_net_enable_rxdmac (struct spider_net_card*) ;
 int spider_net_refill_rx_chain (struct spider_net_card*) ;
 int spider_net_resync_head_ptr (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static void
spider_net_handle_error_irq(struct spider_net_card *card, u32 status_reg,
       u32 error_reg1, u32 error_reg2)
{
 u32 i;
 int show_error = 1;


 if (status_reg)
  for (i = 0; i < 32; i++)
   if (status_reg & (1<<i))
    switch (i)
 {
 case 138:
  show_error = 0;
  break;

 case 135:

  show_error = 0;
  break;
 case 137:




  show_error = 0;
  break;
 case 136:

  if (netif_msg_intr(card))
   dev_err(&card->netdev->dev, "PHY write queue full\n");
  show_error = 0;
  break;





 case 141:

  show_error = 0;
  break;

 case 145:
 case 149:
 case 153:
 case 157:

  show_error = 0;
  break;


 case 144:
 case 148:
 case 152:
 case 156:





  show_error = 0;
  break;


 case 140:
  show_error = 0;
  break;
 case 128:
  show_error = 0;
  break;
 case 142:





  show_error = 0;
  break;



 }


 if (error_reg1)
  for (i = 0; i < 32; i++)
   if (error_reg1 & (1<<i))
    switch (i)
 {
 case 129:


  show_error = 0;
  break;
 case 131:
 case 132:
 case 133:
 case 134:
 case 130:

  if (card->ignore_rx_ramfull == 0) {
   card->ignore_rx_ramfull = 1;
   spider_net_resync_head_ptr(card);
   spider_net_refill_rx_chain(card);
   spider_net_enable_rxdmac(card);
   card->num_rx_ints ++;
   napi_schedule(&card->napi);
  }
  show_error = 0;
  break;


 case 139:

  show_error = 0;
  break;


 case 146:
 case 150:
 case 154:
 case 158:
  spider_net_resync_head_ptr(card);
  spider_net_refill_rx_chain(card);
  spider_net_enable_rxdmac(card);
  card->num_rx_ints ++;
  napi_schedule(&card->napi);
  show_error = 0;
  break;


 case 143:
 case 147:
 case 151:
 case 155:

  spider_net_resync_head_ptr(card);
  spider_net_refill_rx_chain(card);
  spider_net_enable_rxdmac(card);
  card->num_rx_ints ++;
  napi_schedule(&card->napi);
  show_error = 0;
  break;
 default:
  show_error = 1;
  break;
 }


 if (error_reg2)
  for (i = 0; i < 32; i++)
   if (error_reg2 & (1<<i))
    switch (i)
 {
  default:
   break;
 }

 if ((show_error) && (netif_msg_intr(card)) && net_ratelimit())
  dev_err(&card->netdev->dev, "Error interrupt, GHIINT0STS = 0x%08x, "
         "GHIINT1STS = 0x%08x, GHIINT2STS = 0x%08x\n",
         status_reg, error_reg1, error_reg2);


 spider_net_write_reg(card, SPIDER_NET_GHIINT1STS, error_reg1);
 spider_net_write_reg(card, SPIDER_NET_GHIINT2STS, error_reg2);
}
