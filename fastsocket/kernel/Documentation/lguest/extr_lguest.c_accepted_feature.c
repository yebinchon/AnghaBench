
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int feature_len; } ;


 unsigned int CHAR_BIT ;
 int* get_feature_bits (struct device*) ;

__attribute__((used)) static bool accepted_feature(struct device *dev, unsigned int bit)
{
 const u8 *features = get_feature_bits(dev) + dev->feature_len;

 if (dev->feature_len < bit / CHAR_BIT)
  return 0;
 return features[bit / CHAR_BIT] & (1 << (bit % CHAR_BIT));
}
