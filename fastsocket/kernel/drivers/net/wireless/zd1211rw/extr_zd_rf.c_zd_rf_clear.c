
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int (* clear ) (struct zd_rf*) ;} ;


 int ZD_MEMCLEAR (struct zd_rf*,int) ;
 int stub1 (struct zd_rf*) ;

void zd_rf_clear(struct zd_rf *rf)
{
 if (rf->clear)
  rf->clear(rf);
 ZD_MEMCLEAR(rf, sizeof(*rf));
}
