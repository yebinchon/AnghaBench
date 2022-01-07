
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int create_mask(const unsigned stop_bit)
{

 if (stop_bit >= 32) {
  return 0xffffffff;
 }
 return (1<<stop_bit)-1;
}
