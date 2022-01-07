
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u16 ;



__attribute__((used)) static inline u16 ts_pid(const u8 *buf)
{
 return ((buf[1] & 0x1f) << 8) + buf[2];
}
