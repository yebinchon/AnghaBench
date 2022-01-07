
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;
struct ldc_channel {int tx_tail; struct ldc_packet* tx_base; } ;


 int LDC_PACKET_SIZE ;
 unsigned long head_for_data (struct ldc_channel*) ;
 unsigned long tx_advance (struct ldc_channel*,int) ;

__attribute__((used)) static struct ldc_packet *data_get_tx_packet(struct ldc_channel *lp,
          unsigned long *new_tail)
{
 struct ldc_packet *p;
 unsigned long h, t;

 h = head_for_data(lp);
 t = tx_advance(lp, lp->tx_tail);
 if (t == h)
  return ((void*)0);

 *new_tail = t;

 p = lp->tx_base;
 return p + (lp->tx_tail / LDC_PACKET_SIZE);
}
