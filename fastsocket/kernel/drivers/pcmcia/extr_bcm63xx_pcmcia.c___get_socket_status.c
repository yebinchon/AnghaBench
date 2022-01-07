
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct bcm63xx_pcmcia_socket {int card_detected; int card_type; TYPE_2__* pd; TYPE_1__ socket; } ;
struct TYPE_4__ {int ready_gpio; } ;


 int CARD_3V ;
 int CARD_CARDBUS ;
 int CARD_PCCARD ;
 int CARD_XV ;
 unsigned int IN_CD1_VS1H ;
 unsigned int IN_CD1_VS2H ;
 unsigned int IN_CD2_VS1H ;
 unsigned int IN_CD2_VS2H ;
 unsigned int IN_VS1 ;
 unsigned int IN_VS2 ;
 int PCMCIA_C1_CD1_MASK ;
 int PCMCIA_C1_CD2_MASK ;
 int PCMCIA_C1_EN_CARDBUS_MASK ;
 int PCMCIA_C1_EN_PCMCIA_MASK ;
 int PCMCIA_C1_REG ;
 int PCMCIA_C1_VS1OE_MASK ;
 int PCMCIA_C1_VS1_MASK ;
 int PCMCIA_C1_VS2OE_MASK ;
 int PCMCIA_C1_VS2_MASK ;
 unsigned int SS_3VCARD ;
 unsigned int SS_CARDBUS ;
 unsigned int SS_DETECT ;
 unsigned int SS_POWERON ;
 unsigned int SS_READY ;
 unsigned int SS_XVCARD ;
 int dev_err (int *,char*) ;
 scalar_t__ gpio_get_value (int ) ;
 int pcmcia_readl (struct bcm63xx_pcmcia_socket*,int ) ;
 int pcmcia_writel (struct bcm63xx_pcmcia_socket*,int,int ) ;
 int udelay (int) ;
 int* vscd_to_cardtype ;

__attribute__((used)) static unsigned int __get_socket_status(struct bcm63xx_pcmcia_socket *skt)
{
 unsigned int stat;
 u32 val;

 stat = 0;


 val = pcmcia_readl(skt, PCMCIA_C1_REG);

 if (!(val & PCMCIA_C1_CD1_MASK) && !(val & PCMCIA_C1_CD2_MASK))
  stat |= SS_DETECT;


 if ((stat & SS_DETECT) && !skt->card_detected) {
  unsigned int stat = 0;


  val |= PCMCIA_C1_VS1OE_MASK;
  val |= PCMCIA_C1_VS2OE_MASK;
  pcmcia_writel(skt, val, PCMCIA_C1_REG);


  udelay(10);
  val = pcmcia_readl(skt, PCMCIA_C1_REG);
  stat |= (val & PCMCIA_C1_VS1_MASK) ? IN_VS1 : 0;
  stat |= (val & PCMCIA_C1_VS2_MASK) ? IN_VS2 : 0;


  val &= ~PCMCIA_C1_VS1OE_MASK;
  val |= PCMCIA_C1_VS2OE_MASK;
  pcmcia_writel(skt, val, PCMCIA_C1_REG);


  udelay(10);
  val = pcmcia_readl(skt, PCMCIA_C1_REG);
  stat |= (val & PCMCIA_C1_CD1_MASK) ? IN_CD1_VS2H : 0;
  stat |= (val & PCMCIA_C1_CD2_MASK) ? IN_CD2_VS2H : 0;


  val |= PCMCIA_C1_VS1OE_MASK;
  val &= ~PCMCIA_C1_VS2OE_MASK;
  pcmcia_writel(skt, val, PCMCIA_C1_REG);


  udelay(10);
  val = pcmcia_readl(skt, PCMCIA_C1_REG);
  stat |= (val & PCMCIA_C1_CD1_MASK) ? IN_CD1_VS1H : 0;
  stat |= (val & PCMCIA_C1_CD2_MASK) ? IN_CD2_VS1H : 0;


  skt->card_type = vscd_to_cardtype[stat];
  if (!skt->card_type)
   dev_err(&skt->socket.dev, "unsupported card type\n");


  val &= ~(PCMCIA_C1_VS1OE_MASK | PCMCIA_C1_VS2OE_MASK);


  val &= ~(PCMCIA_C1_EN_PCMCIA_MASK | PCMCIA_C1_EN_CARDBUS_MASK);
  if (skt->card_type & CARD_PCCARD)
   val |= PCMCIA_C1_EN_PCMCIA_MASK;
  else
   val |= PCMCIA_C1_EN_CARDBUS_MASK;

  pcmcia_writel(skt, val, PCMCIA_C1_REG);
 }
 skt->card_detected = (stat & SS_DETECT) ? 1 : 0;


 if (skt->card_type & CARD_CARDBUS)
  stat |= SS_CARDBUS;
 if (skt->card_type & CARD_3V)
  stat |= SS_3VCARD;
 if (skt->card_type & CARD_XV)
  stat |= SS_XVCARD;
 stat |= SS_POWERON;

 if (gpio_get_value(skt->pd->ready_gpio))
  stat |= SS_READY;

 return stat;
}
