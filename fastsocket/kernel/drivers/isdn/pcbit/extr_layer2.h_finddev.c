
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcbit_dev {int id; } ;


 int MAX_PCBIT_CARDS ;
 struct pcbit_dev** dev_pcbit ;

__attribute__((used)) static __inline__ struct pcbit_dev * finddev(int id)
{
  struct pcbit_dev * dev;
  int i;

  for (i=0; i<MAX_PCBIT_CARDS; i++)
    if ((dev=dev_pcbit[i]))
      if (dev->id == id)
 return dev;
  return ((void*)0);
}
