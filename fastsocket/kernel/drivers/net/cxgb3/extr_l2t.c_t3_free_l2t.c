
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2t_data {int dummy; } ;


 int cxgb_free_mem (struct l2t_data*) ;

void t3_free_l2t(struct l2t_data *d)
{
 cxgb_free_mem(d);
}
