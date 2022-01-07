
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_port {scalar_t__ rx_len; unsigned char rx_crcl; int rx_crch; unsigned char* rx_buf; } ;
struct net_device {int dummy; } ;


 scalar_t__ YAM_MAX_FRAME ;
 unsigned char* chktabh ;
 int* chktabl ;

__attribute__((used)) static inline void yam_rx_byte(struct net_device *dev, struct yam_port *yp, unsigned char rxb)
{
 if (yp->rx_len < YAM_MAX_FRAME) {
  unsigned char c = yp->rx_crcl;
  yp->rx_crcl = (chktabl[c] ^ yp->rx_crch);
  yp->rx_crch = (chktabh[c] ^ rxb);
  yp->rx_buf[yp->rx_len++] = rxb;
 }
}
