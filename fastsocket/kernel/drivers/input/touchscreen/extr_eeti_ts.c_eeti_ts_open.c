
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct eeti_ts_priv {int work; int irq; } ;


 int eeti_ts_read (int *) ;
 int enable_irq (int ) ;
 struct eeti_ts_priv* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int eeti_ts_open(struct input_dev *dev)
{
 struct eeti_ts_priv *priv = input_get_drvdata(dev);

 enable_irq(priv->irq);


 eeti_ts_read(&priv->work);

 return 0;
}
