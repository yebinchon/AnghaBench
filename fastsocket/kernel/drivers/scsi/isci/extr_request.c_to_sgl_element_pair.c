
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scu_sgl_element_pair {int dummy; } ;
struct isci_request {struct scu_sgl_element_pair* sg_table; TYPE_1__* tc; } ;
struct TYPE_2__ {struct scu_sgl_element_pair sgl_pair_cd; struct scu_sgl_element_pair sgl_pair_ab; } ;



__attribute__((used)) static struct scu_sgl_element_pair *to_sgl_element_pair(struct isci_request *ireq,
       int idx)
{
 if (idx == 0)
  return &ireq->tc->sgl_pair_ab;
 else if (idx == 1)
  return &ireq->tc->sgl_pair_cd;
 else if (idx < 0)
  return ((void*)0);
 else
  return &ireq->sg_table[idx - 2];
}
