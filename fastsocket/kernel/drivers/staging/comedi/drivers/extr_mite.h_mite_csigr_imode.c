
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int mite_csigr_imode(u32 csigr_bits)
{
 return (csigr_bits >> 12) & 0x3;
}
