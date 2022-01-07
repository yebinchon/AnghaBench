
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_WAKEMSK ;
 int SYS_WAKESRC ;
 int au_readl (int ) ;
 int au_sync () ;
 int au_writel (int ,int ) ;
 int db1x_pm_last_wakesrc ;

__attribute__((used)) static void db1x_pm_end(void)
{



 db1x_pm_last_wakesrc = au_readl(SYS_WAKESRC);

 au_writel(0, SYS_WAKEMSK);
 au_writel(0, SYS_WAKESRC);
 au_sync();

}
