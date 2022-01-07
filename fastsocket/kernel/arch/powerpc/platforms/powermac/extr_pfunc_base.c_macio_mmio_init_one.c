
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_chip {TYPE_1__* of_node; } ;
struct TYPE_2__ {int full_name; } ;


 int DBG (char*,int ) ;
 int macio_mmio_handlers ;
 int pmf_register_driver (TYPE_1__*,int *,struct macio_chip*) ;

__attribute__((used)) static void macio_mmio_init_one(struct macio_chip *macio)
{
 DBG("Installing MMIO functions for macio %s\n",
     macio->of_node->full_name);

 pmf_register_driver(macio->of_node, &macio_mmio_handlers, macio);
}
