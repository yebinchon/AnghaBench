
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {struct m48t86_ops* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t86_ops {unsigned char (* readbyte ) (int ) ;} ;
struct device {int dummy; } ;


 int M48T86_REG_B ;
 unsigned char M48T86_REG_B_DM ;
 int M48T86_REG_D ;
 unsigned char M48T86_REG_D_VRT ;
 int seq_printf (struct seq_file*,char*,char*) ;
 unsigned char stub1 (int ) ;
 unsigned char stub2 (int ) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int m48t86_rtc_proc(struct device *dev, struct seq_file *seq)
{
 unsigned char reg;
 struct platform_device *pdev = to_platform_device(dev);
 struct m48t86_ops *ops = pdev->dev.platform_data;

 reg = ops->readbyte(M48T86_REG_B);

 seq_printf(seq, "mode\t\t: %s\n",
   (reg & M48T86_REG_B_DM) ? "binary" : "bcd");

 reg = ops->readbyte(M48T86_REG_D);

 seq_printf(seq, "battery\t\t: %s\n",
   (reg & M48T86_REG_D_VRT) ? "ok" : "exhausted");

 return 0;
}
