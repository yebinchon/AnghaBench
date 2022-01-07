
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_bitmap {int * bitmap; int of_node; } ;


 int of_node_put (int ) ;

void msi_bitmap_free(struct msi_bitmap *bmp)
{

 of_node_put(bmp->of_node);
 bmp->bitmap = ((void*)0);
}
