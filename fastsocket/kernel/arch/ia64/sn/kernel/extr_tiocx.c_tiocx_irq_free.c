
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sn_irq_info {int irq_bridge; } ;
typedef int nasid_t ;


 int NASID_GET (int ) ;
 int TIO_SWIN_WIDGETNUM (int ) ;
 int kfree (struct sn_irq_info*) ;
 int tiocx_intr_free (int,int,struct sn_irq_info*) ;

void tiocx_irq_free(struct sn_irq_info *sn_irq_info)
{
 u64 bridge = (u64) sn_irq_info->irq_bridge;
 nasid_t nasid = NASID_GET(bridge);
 int widget;

 if (nasid & 1) {
  widget = TIO_SWIN_WIDGETNUM(bridge);
  tiocx_intr_free(nasid, widget, sn_irq_info);
  kfree(sn_irq_info);
 }
}
