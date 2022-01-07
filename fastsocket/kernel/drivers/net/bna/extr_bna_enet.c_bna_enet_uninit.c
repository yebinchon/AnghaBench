
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int * bna; scalar_t__ flags; } ;



__attribute__((used)) static void
bna_enet_uninit(struct bna_enet *enet)
{
 enet->flags = 0;

 enet->bna = ((void*)0);
}
