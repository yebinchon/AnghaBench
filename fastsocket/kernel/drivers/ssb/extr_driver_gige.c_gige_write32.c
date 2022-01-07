
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ssb_gige {int dev; } ;


 int ssb_write32 (int ,int ,int ) ;

__attribute__((used)) static inline void gige_write32(struct ssb_gige *dev,
    u16 offset, u32 value)
{
 ssb_write32(dev->dev, offset, value);
}
