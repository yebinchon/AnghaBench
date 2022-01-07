
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
typedef unsigned long u16 ;



__attribute__((used)) static void perf_event_decode(unsigned long val, u16 *enc, u8 *msk)
{
 *msk = val & 0xff;
 *enc = val >> 16;
}
