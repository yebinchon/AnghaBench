
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __BITOPS_WORDS (int) ;

__attribute__((used)) static inline unsigned long bitmap_size(int num_ssid, int num_id)
{
 return __BITOPS_WORDS(num_ssid * num_id) * sizeof(unsigned long);
}
