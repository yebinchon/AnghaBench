
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SNB_GMCH_GMS_MASK ;
 int SNB_GMCH_GMS_SHIFT ;

__attribute__((used)) static inline size_t gen6_get_stolen_size(u16 snb_gmch_ctl)
{
 snb_gmch_ctl >>= SNB_GMCH_GMS_SHIFT;
 snb_gmch_ctl &= SNB_GMCH_GMS_MASK;
 return snb_gmch_ctl << 25;
}
