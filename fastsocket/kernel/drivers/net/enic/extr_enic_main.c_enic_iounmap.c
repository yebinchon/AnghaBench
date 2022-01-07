
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {TYPE_1__* bar; } ;
struct TYPE_2__ {scalar_t__ vaddr; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void enic_iounmap(struct enic *enic)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(enic->bar); i++)
  if (enic->bar[i].vaddr)
   iounmap(enic->bar[i].vaddr);
}
