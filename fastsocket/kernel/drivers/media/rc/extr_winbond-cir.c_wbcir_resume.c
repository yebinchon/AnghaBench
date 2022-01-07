
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {int irq; } ;
struct pnp_dev {int dummy; } ;


 int enable_irq (int ) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int wbcir_init_hw (struct wbcir_data*) ;

__attribute__((used)) static int
wbcir_resume(struct pnp_dev *device)
{
 struct wbcir_data *data = pnp_get_drvdata(device);

 wbcir_init_hw(data);
 enable_irq(data->irq);

 return 0;
}
