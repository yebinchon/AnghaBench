
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct espi_intr_counts {int dummy; } ;
struct peespi {struct espi_intr_counts const intr_cnt; } ;



const struct espi_intr_counts *t1_espi_get_intr_counts(struct peespi *espi)
{
 return &espi->intr_cnt;
}
