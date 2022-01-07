
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {unsigned long rx_head; } ;


 int __set_rx_head (struct ldc_channel*,unsigned long) ;
 int ldc_abort (struct ldc_channel*) ;

__attribute__((used)) static int rx_set_head(struct ldc_channel *lp, unsigned long head)
{
 int err = __set_rx_head(lp, head);

 if (err < 0)
  return ldc_abort(lp);

 lp->rx_head = head;
 return 0;
}
