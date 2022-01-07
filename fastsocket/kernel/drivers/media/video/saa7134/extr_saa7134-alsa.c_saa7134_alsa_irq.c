
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dmasound {struct saa7134_dev* priv_data; } ;
struct saa7134_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int SAA7134_IRQ_REPORT ;
 unsigned long SAA7134_IRQ_REPORT_DONE_RA3 ;
 int SAA7134_IRQ_STATUS ;
 int dprintk (char*) ;
 int saa7134_irq_alsa_done (struct saa7134_dev*,unsigned long) ;
 unsigned long saa_readl (int ) ;
 int saa_writel (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t saa7134_alsa_irq(int irq, void *dev_id)
{
 struct saa7134_dmasound *dmasound = dev_id;
 struct saa7134_dev *dev = dmasound->priv_data;

 unsigned long report, status;
 int loop, handled = 0;

 for (loop = 0; loop < 10; loop++) {
  report = saa_readl(SAA7134_IRQ_REPORT);
  status = saa_readl(SAA7134_IRQ_STATUS);

  if (report & SAA7134_IRQ_REPORT_DONE_RA3) {
   handled = 1;
   saa_writel(SAA7134_IRQ_REPORT,
       SAA7134_IRQ_REPORT_DONE_RA3);
   saa7134_irq_alsa_done(dev, status);
  } else {
   goto out;
  }
 }

 if (loop == 10) {
  dprintk("error! looping IRQ!");
 }

out:
 return IRQ_RETVAL(handled);
}
