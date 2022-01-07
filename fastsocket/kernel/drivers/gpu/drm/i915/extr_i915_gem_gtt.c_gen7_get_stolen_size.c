
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 size_t IVB_GMCH_GMS_MASK ;
 size_t IVB_GMCH_GMS_SHIFT ;

__attribute__((used)) static inline size_t gen7_get_stolen_size(u16 snb_gmch_ctl)
{
 static const int stolen_decoder[] = {
  0, 0, 0, 0, 0, 32, 48, 64, 128, 256, 96, 160, 224, 352};
 snb_gmch_ctl >>= IVB_GMCH_GMS_SHIFT;
 snb_gmch_ctl &= IVB_GMCH_GMS_MASK;
 return stolen_decoder[snb_gmch_ctl] << 20;
}
