
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t read_32(const uint8_t **datap)
{
 uint32_t a;
 a = *(*datap)++ << 24;
 a |= *(*datap)++ << 16;
 a |= *(*datap)++ << 8;
 a |= *(*datap)++;
 return a;
}
