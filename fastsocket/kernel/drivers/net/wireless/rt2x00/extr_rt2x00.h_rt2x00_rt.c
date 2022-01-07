
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ const rt; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;



__attribute__((used)) static inline bool rt2x00_rt(struct rt2x00_dev *rt2x00dev, const u16 rt)
{
 return (rt2x00dev->chip.rt == rt);
}
