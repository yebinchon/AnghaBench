
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int * card_link; } ;



__attribute__((used)) static void card_remove(struct pnp_dev *dev)
{
 dev->card_link = ((void*)0);
}
