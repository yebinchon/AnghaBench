
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {unsigned int feature_len; TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int feature_len; scalar_t__ config_len; } ;


 unsigned int CHAR_BIT ;
 int assert (int) ;
 int* get_feature_bits (struct device*) ;

__attribute__((used)) static void add_feature(struct device *dev, unsigned bit)
{
 u8 *features = get_feature_bits(dev);


 if (dev->desc->feature_len <= bit / CHAR_BIT) {
  assert(dev->desc->config_len == 0);
  dev->feature_len = dev->desc->feature_len = (bit/CHAR_BIT) + 1;
 }

 features[bit / CHAR_BIT] |= (1 << (bit % CHAR_BIT));
}
