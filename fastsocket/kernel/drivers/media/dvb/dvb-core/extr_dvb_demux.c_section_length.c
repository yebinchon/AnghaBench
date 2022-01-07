
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u16 section_length(const u8 *buf)
{
 return 3 + ((buf[1] & 0x0f) << 8) + buf[2];
}
