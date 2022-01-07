
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lguest_device_desc {int feature_len; } ;


 int * lg_features (struct lguest_device_desc const*) ;

__attribute__((used)) static u8 *lg_config(const struct lguest_device_desc *desc)
{
 return lg_features(desc) + desc->feature_len * 2;
}
