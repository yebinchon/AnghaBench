
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; scalar_t__ msb_right; } ;
struct TYPE_5__ {TYPE_1__ green; } ;
struct TYPE_6__ {TYPE_2__ var; } ;
struct clcd_fb {TYPE_3__ fb; } ;


 int NETX_PIO_OEPIO ;
 int NETX_PIO_OUTPIO ;
 int NETX_SYSTEM_IOC_ACCESS_KEY ;
 int NETX_SYSTEM_IOC_CR ;
 int netx_clcd_setup (struct clcd_fb*) ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int nxdb500_clcd_setup(struct clcd_fb *fb)
{
 unsigned int val;

 fb->fb.var.green.length = 5;
 fb->fb.var.green.msb_right = 0;


 val = readl(NETX_SYSTEM_IOC_ACCESS_KEY);
 writel(val, NETX_SYSTEM_IOC_ACCESS_KEY);

 writel(3, NETX_SYSTEM_IOC_CR);

 val = readl(NETX_PIO_OUTPIO);
 writel(val | 1, NETX_PIO_OUTPIO);

 val = readl(NETX_PIO_OEPIO);
 writel(val | 1, NETX_PIO_OEPIO);
 return netx_clcd_setup(fb);
}
