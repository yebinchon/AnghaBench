
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u_int32_t ;



__attribute__((used)) static inline u_int32_t get_24(const unsigned char *x)
{
 return (x[2] << 24) | (x[1] << 16) | (x[0] << 8);
}
