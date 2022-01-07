
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_pub {int dummy; } ;
struct TYPE_2__ {int txavail; } ;
struct dma_info {TYPE_1__ dma; } ;


 int strcmp (char const*,char*) ;

unsigned long dma_getvar(struct dma_pub *pub, const char *name)
{
 struct dma_info *di = (struct dma_info *)pub;

 if (!strcmp(name, "&txavail"))
  return (unsigned long)&(di->dma.txavail);
 return 0;
}
