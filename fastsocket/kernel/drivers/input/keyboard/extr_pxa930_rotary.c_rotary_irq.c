
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa930_rotary_platform_data {int up_key; int down_key; int rel_code; } ;
struct pxa930_rotary {int last_ercr; int input_dev; scalar_t__ mmio_base; struct pxa930_rotary_platform_data* pdata; } ;
typedef int irqreturn_t ;


 scalar_t__ ERCR ;
 int IRQ_HANDLED ;
 int __raw_readl (scalar_t__) ;
 int clear_sbcr (struct pxa930_rotary*) ;
 int input_report_key (int ,int,int) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static irqreturn_t rotary_irq(int irq, void *dev_id)
{
 struct pxa930_rotary *r = dev_id;
 struct pxa930_rotary_platform_data *pdata = r->pdata;
 int ercr, delta, key;

 ercr = __raw_readl(r->mmio_base + ERCR) & 0xf;
 clear_sbcr(r);

 delta = ercr - r->last_ercr;
 if (delta == 0)
  return IRQ_HANDLED;

 r->last_ercr = ercr;

 if (pdata->up_key && pdata->down_key) {
  key = (delta > 0) ? pdata->up_key : pdata->down_key;
  input_report_key(r->input_dev, key, 1);
  input_sync(r->input_dev);
  input_report_key(r->input_dev, key, 0);
 } else
  input_report_rel(r->input_dev, pdata->rel_code, delta);

 input_sync(r->input_dev);

 return IRQ_HANDLED;
}
