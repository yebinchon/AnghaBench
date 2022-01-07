
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dca_provider {int dummy; } ;


 int kfree (struct dca_provider*) ;

void free_dca_provider(struct dca_provider *dca)
{
 kfree(dca);
}
