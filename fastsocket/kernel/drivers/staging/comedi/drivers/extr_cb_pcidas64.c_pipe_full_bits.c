
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t pipe_full_bits(uint16_t hw_status_bits)
{
 return (hw_status_bits >> 10) & 0x3;
}
