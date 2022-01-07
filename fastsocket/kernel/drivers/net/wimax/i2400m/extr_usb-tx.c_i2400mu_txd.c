
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2400m {int dummy; } ;
struct i2400mu {int tx_wq; TYPE_1__* usb_iface; struct i2400m i2400m; } ;
struct i2400m_msg_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int WARN_ON (int ) ;
 int d_dump (int,struct device*,struct i2400m_msg_hdr*,size_t) ;
 int d_fnend (int,struct device*,char*,struct i2400mu*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400mu*) ;
 int d_printf (int,struct device*,char*,...) ;
 struct i2400m_msg_hdr* i2400m_tx_msg_get (struct i2400m*,size_t*) ;
 int i2400m_tx_msg_sent (struct i2400m*) ;
 int i2400mu_tx (struct i2400mu*,struct i2400m_msg_hdr*,size_t) ;
 scalar_t__ kthread_should_stop () ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static
int i2400mu_txd(void *_i2400mu)
{
 int result = 0;
 struct i2400mu *i2400mu = _i2400mu;
 struct i2400m *i2400m = &i2400mu->i2400m;
 struct device *dev = &i2400mu->usb_iface->dev;
 struct i2400m_msg_hdr *tx_msg;
 size_t tx_msg_size;

 d_fnstart(4, dev, "(i2400mu %p)\n", i2400mu);

 while (1) {
  d_printf(2, dev, "TX: waiting for messages\n");
  tx_msg = ((void*)0);
  wait_event_interruptible(
   i2400mu->tx_wq,
   (kthread_should_stop()
    || (tx_msg = i2400m_tx_msg_get(i2400m, &tx_msg_size)))
   );
  if (kthread_should_stop())
   break;
  WARN_ON(tx_msg == ((void*)0));
  d_printf(2, dev, "TX: submitting %zu bytes\n", tx_msg_size);
  d_dump(5, dev, tx_msg, tx_msg_size);

  i2400mu_tx(i2400mu, tx_msg, tx_msg_size);
  i2400m_tx_msg_sent(i2400m);
  if (result < 0)
   break;
 }
 d_fnend(4, dev, "(i2400mu %p) = %d\n", i2400mu, result);
 return result;
}
