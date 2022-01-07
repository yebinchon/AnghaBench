
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {struct claw_privbk* ml_priv; } ;
struct claw_privbk {struct chbk* channel; } ;
struct chbk {int cdev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 size_t WRITE ;
 int claw_hw_tx (struct sk_buff*,struct net_device*,int) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int trace ;

__attribute__((used)) static int
claw_tx(struct sk_buff *skb, struct net_device *dev)
{
        int rc;
 struct claw_privbk *privptr = dev->ml_priv;
 unsigned long saveflags;
        struct chbk *p_ch;

 CLAW_DBF_TEXT(4, trace, "claw_tx");
        p_ch=&privptr->channel[WRITE];
        spin_lock_irqsave(get_ccwdev_lock(p_ch->cdev), saveflags);
        rc=claw_hw_tx( skb, dev, 1 );
        spin_unlock_irqrestore(get_ccwdev_lock(p_ch->cdev), saveflags);
 CLAW_DBF_TEXT_(4, trace, "clawtx%d", rc);
 if (rc)
  rc = NETDEV_TX_BUSY;
 else
  rc = NETDEV_TX_OK;
        return rc;
}
