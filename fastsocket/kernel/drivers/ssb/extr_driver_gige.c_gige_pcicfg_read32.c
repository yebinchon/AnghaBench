
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_gige {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ SSB_GIGE_PCICFG ;
 int gige_read32 (struct ssb_gige*,scalar_t__) ;

__attribute__((used)) static inline
u32 gige_pcicfg_read32(struct ssb_gige *dev, unsigned int offset)
{
 BUG_ON(offset >= 256);
 return gige_read32(dev, SSB_GIGE_PCICFG + offset);
}
