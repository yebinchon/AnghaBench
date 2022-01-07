
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;



__attribute__((used)) static inline uint mk_int_int_mask(uint mask)
{
 return (1 << (7 - (mask/2)));
}
