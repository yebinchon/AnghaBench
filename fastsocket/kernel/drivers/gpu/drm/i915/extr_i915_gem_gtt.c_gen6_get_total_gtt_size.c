
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SNB_GMCH_GGMS_MASK ;
 int SNB_GMCH_GGMS_SHIFT ;

__attribute__((used)) static inline unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
{
 snb_gmch_ctl >>= SNB_GMCH_GGMS_SHIFT;
 snb_gmch_ctl &= SNB_GMCH_GGMS_MASK;
 return snb_gmch_ctl << 20;
}
