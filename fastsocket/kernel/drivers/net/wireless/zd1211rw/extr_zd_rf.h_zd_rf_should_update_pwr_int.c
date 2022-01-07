
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_rf {int update_channel_int; } ;



__attribute__((used)) static inline int zd_rf_should_update_pwr_int(struct zd_rf *rf)
{
 return rf->update_channel_int;
}
