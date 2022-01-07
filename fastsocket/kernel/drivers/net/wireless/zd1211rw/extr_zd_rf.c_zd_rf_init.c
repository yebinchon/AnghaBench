
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int update_channel_int; } ;


 int memset (struct zd_rf*,int ,int) ;

void zd_rf_init(struct zd_rf *rf)
{
 memset(rf, 0, sizeof(*rf));



 rf->update_channel_int = 1;
}
