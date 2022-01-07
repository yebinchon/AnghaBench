
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_2__ {int bus; } ;


 int bcma_err (int ,char*) ;

__attribute__((used)) static inline int bcma_nflash_init(struct bcma_drv_cc *cc)
{
 bcma_err(cc->core->bus, "NAND flash not supported\n");
 return 0;
}
