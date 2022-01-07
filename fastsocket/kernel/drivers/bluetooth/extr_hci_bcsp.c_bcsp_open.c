
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct TYPE_2__ {scalar_t__ data; int function; } ;
struct bcsp_struct {int use_crc; int rx_state; TYPE_1__ tbcsp; int unrel; int rel; int unack; } ;


 int BCSP_W4_PKT_DELIMITER ;
 int BT_DBG (char*,struct hci_uart*) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int bcsp_timed_event ;
 int init_timer (TYPE_1__*) ;
 struct bcsp_struct* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;
 scalar_t__ txcrc ;

__attribute__((used)) static int bcsp_open(struct hci_uart *hu)
{
 struct bcsp_struct *bcsp;

 BT_DBG("hu %p", hu);

 bcsp = kzalloc(sizeof(*bcsp), GFP_ATOMIC);
 if (!bcsp)
  return -ENOMEM;

 hu->priv = bcsp;
 skb_queue_head_init(&bcsp->unack);
 skb_queue_head_init(&bcsp->rel);
 skb_queue_head_init(&bcsp->unrel);

 init_timer(&bcsp->tbcsp);
 bcsp->tbcsp.function = bcsp_timed_event;
 bcsp->tbcsp.data = (u_long) hu;

 bcsp->rx_state = BCSP_W4_PKT_DELIMITER;

 if (txcrc)
  bcsp->use_crc = 1;

 return 0;
}
