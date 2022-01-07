
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_rx_queue {int read; int write; } ;


 scalar_t__ RX_QUEUE_SIZE ;

__attribute__((used)) static int ipw_rx_queue_space(const struct ipw_rx_queue *q)
{
 int s = q->read - q->write;
 if (s <= 0)
  s += RX_QUEUE_SIZE;

 s -= 2;
 if (s < 0)
  s = 0;
 return s;
}
