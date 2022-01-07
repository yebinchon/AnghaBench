
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int len; struct sk_buff** arr; } ;
struct ehea_port_res {int qp; TYPE_2__ rq1_skba; TYPE_1__* port; } ;
struct TYPE_3__ {struct net_device* netdev; } ;


 int EHEA_L_PKT_SIZE ;
 int ehea_error (char*) ;
 int ehea_info (char*) ;
 int ehea_update_rq1a (int ,int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;

__attribute__((used)) static void ehea_init_fill_rq1(struct ehea_port_res *pr, int nr_rq1a)
{
 struct sk_buff **skb_arr_rq1 = pr->rq1_skba.arr;
 struct net_device *dev = pr->port->netdev;
 int i;

 if (nr_rq1a > pr->rq1_skba.len){
  ehea_error("NR_RQ1A bigger than skb array len\n");
  return;
 }

 for (i = 0; i < nr_rq1a; i++) {
  skb_arr_rq1[i] = netdev_alloc_skb(dev, EHEA_L_PKT_SIZE);
  if (!skb_arr_rq1[i]){
   ehea_info("No enough memory to allocate skb array\n");
   break;
  }
 }

 ehea_update_rq1a(pr->qp, i - 1);
}
