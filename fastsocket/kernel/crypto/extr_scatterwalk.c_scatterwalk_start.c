
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; int length; } ;
struct scatter_walk {int offset; struct scatterlist* sg; } ;


 int BUG_ON (int) ;

void scatterwalk_start(struct scatter_walk *walk, struct scatterlist *sg)
{
 walk->sg = sg;

 BUG_ON(!sg->length);

 walk->offset = sg->offset;
}
