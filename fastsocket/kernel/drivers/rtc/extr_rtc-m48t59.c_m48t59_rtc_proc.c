
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {int lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;


 int M48T59_FLAGS ;
 int M48T59_FLAGS_BF ;
 int M48T59_READ (int ) ;
 struct m48t59_private* platform_get_drvdata (struct platform_device*) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int m48t59_rtc_proc(struct device *dev, struct seq_file *seq)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t59_plat_data *pdata = pdev->dev.platform_data;
 struct m48t59_private *m48t59 = platform_get_drvdata(pdev);
 unsigned long flags;
 u8 val;

 spin_lock_irqsave(&m48t59->lock, flags);
 val = M48T59_READ(M48T59_FLAGS);
 spin_unlock_irqrestore(&m48t59->lock, flags);

 seq_printf(seq, "battery\t\t: %s\n",
   (val & M48T59_FLAGS_BF) ? "low" : "normal");
 return 0;
}
