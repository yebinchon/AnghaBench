
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_rf {int (* patch_6m_band_edge ) (struct zd_rf*,int ) ;} ;


 int stub1 (struct zd_rf*,int ) ;

int zd_rf_patch_6m_band_edge(struct zd_rf *rf, u8 channel)
{
 if (!rf->patch_6m_band_edge)
  return 0;

 return rf->patch_6m_band_edge(rf, channel);
}
