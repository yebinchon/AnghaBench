
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_port {struct c2_dev* c2dev; } ;
struct c2_dev {unsigned int cur_rx; } ;


 unsigned int C2_GET_CUR_RX (struct c2_dev*) ;
 unsigned int C2_PCI_HRX_QUI ;
 int C2_SET_CUR_RX (struct c2_dev*,unsigned int) ;
 int pr_debug (char*,...) ;
 int ssleep (int) ;

__attribute__((used)) static void c2_reset(struct c2_port *c2_port)
{
 struct c2_dev *c2dev = c2_port->c2dev;
 unsigned int cur_rx = c2dev->cur_rx;


 C2_SET_CUR_RX(c2dev, cur_rx | C2_PCI_HRX_QUI);





 ssleep(2);

 cur_rx = C2_GET_CUR_RX(c2dev);

 if (cur_rx & C2_PCI_HRX_QUI)
  pr_debug("c2_reset: failed to quiesce the hardware!\n");

 cur_rx &= ~C2_PCI_HRX_QUI;

 c2dev->cur_rx = cur_rx;

 pr_debug("Current RX: %u\n", c2dev->cur_rx);
}
