
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline uint16_t read_16(const uint8_t **datap)
{
 uint16_t a;
 a = *(*datap)++ << 8;
 a |= *(*datap)++;
 return a;
}
