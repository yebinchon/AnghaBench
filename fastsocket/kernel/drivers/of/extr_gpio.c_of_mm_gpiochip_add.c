
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int label; } ;
struct of_gpio_chip {scalar_t__ xlate; struct gpio_chip gc; } ;
struct of_mm_gpio_chip {int regs; int (* save_regs ) (struct of_mm_gpio_chip*) ;struct of_gpio_chip of_gc; } ;
struct device_node {int full_name; struct of_gpio_chip* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int gpiochip_add (struct gpio_chip*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int kstrdup (int ,int ) ;
 scalar_t__ of_gpio_simple_xlate ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_get (struct device_node*) ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int ,int) ;
 int stub1 (struct of_mm_gpio_chip*) ;

int of_mm_gpiochip_add(struct device_node *np,
         struct of_mm_gpio_chip *mm_gc)
{
 int ret = -ENOMEM;
 struct of_gpio_chip *of_gc = &mm_gc->of_gc;
 struct gpio_chip *gc = &of_gc->gc;

 gc->label = kstrdup(np->full_name, GFP_KERNEL);
 if (!gc->label)
  goto err0;

 mm_gc->regs = of_iomap(np, 0);
 if (!mm_gc->regs)
  goto err1;

 gc->base = -1;

 if (!of_gc->xlate)
  of_gc->xlate = of_gpio_simple_xlate;

 if (mm_gc->save_regs)
  mm_gc->save_regs(mm_gc);

 np->data = of_gc;

 ret = gpiochip_add(gc);
 if (ret)
  goto err2;


 of_node_get(np);

 pr_debug("%s: registered as generic GPIO chip, base is %d\n",
   np->full_name, gc->base);
 return 0;
err2:
 np->data = ((void*)0);
 iounmap(mm_gc->regs);
err1:
 kfree(gc->label);
err0:
 pr_err("%s: GPIO chip registration failed with status %d\n",
        np->full_name, ret);
 return ret;
}
