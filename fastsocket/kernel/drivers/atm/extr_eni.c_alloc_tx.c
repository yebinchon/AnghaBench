
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eni_tx {int send; } ;
struct eni_dev {struct eni_tx* tx; } ;


 int NR_CHAN ;

__attribute__((used)) static struct eni_tx *alloc_tx(struct eni_dev *eni_dev,int ubr)
{
 int i;

 for (i = !ubr; i < NR_CHAN; i++)
  if (!eni_dev->tx[i].send) return eni_dev->tx+i;
 return ((void*)0);
}
