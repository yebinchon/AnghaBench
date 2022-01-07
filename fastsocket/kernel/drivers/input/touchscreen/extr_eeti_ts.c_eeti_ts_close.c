
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct eeti_ts_priv {int work; int irq; } ;


 int cancel_work_sync (int *) ;
 int disable_irq (int ) ;
 struct eeti_ts_priv* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void eeti_ts_close(struct input_dev *dev)
{
 struct eeti_ts_priv *priv = input_get_drvdata(dev);

 disable_irq(priv->irq);
 cancel_work_sync(&priv->work);
}
