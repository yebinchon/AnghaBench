
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; int dev; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 int IS_ERR (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int set_clock_run(struct platform_device *pdev)
{
 struct clk *clk;
 char name[10];
 int retval = 0;

 snprintf(name, 10, "i2c%d_ck", pdev->id);
 clk = clk_get(&pdev->dev, name);
 if (!IS_ERR(clk)) {
  clk_set_rate(clk, 1);
  clk_put(clk);
 } else
  retval = -ENOENT;

 return retval;
}
