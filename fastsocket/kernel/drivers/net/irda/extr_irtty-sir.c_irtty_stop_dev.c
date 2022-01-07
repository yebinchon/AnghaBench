
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct sirtty_cb {scalar_t__ magic; struct tty_struct* tty; } ;
struct sir_dev {struct sirtty_cb* priv; } ;
struct TYPE_2__ {int (* stop ) (struct tty_struct*) ;} ;


 int ESTALE ;
 scalar_t__ IRTTY_MAGIC ;
 int TRUE ;
 int irtty_mutex ;
 int irtty_stop_receiver (struct tty_struct*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int irtty_stop_dev(struct sir_dev *dev)
{
 struct sirtty_cb *priv;
 struct tty_struct *tty;


 mutex_lock(&irtty_mutex);

 priv = dev->priv;
 if (unlikely(!priv || priv->magic!=IRTTY_MAGIC)) {
  mutex_unlock(&irtty_mutex);
  return -ESTALE;
 }

 tty = priv->tty;


 irtty_stop_receiver(tty, TRUE);
 if (tty->ops->stop)
  tty->ops->stop(tty);

 mutex_unlock(&irtty_mutex);

 return 0;
}
