
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoib_dev_priv {scalar_t__ send_wc; int dev; int send_cq; } ;


 int MAX_SEND_CQE ;
 int ib_poll_cq (int ,int,scalar_t__) ;
 int ipoib_ib_handle_tx_wc (int ,scalar_t__) ;

__attribute__((used)) static int poll_tx(struct ipoib_dev_priv *priv)
{
 int n, i;

 n = ib_poll_cq(priv->send_cq, MAX_SEND_CQE, priv->send_wc);
 for (i = 0; i < n; ++i)
  ipoib_ib_handle_tx_wc(priv->dev, priv->send_wc + i);

 return n == MAX_SEND_CQE;
}
