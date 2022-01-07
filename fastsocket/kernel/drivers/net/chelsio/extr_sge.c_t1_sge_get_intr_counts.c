
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_intr_counts {int dummy; } ;
struct sge {struct sge_intr_counts const stats; } ;



const struct sge_intr_counts *t1_sge_get_intr_counts(const struct sge *sge)
{
 return &sge->stats;
}
