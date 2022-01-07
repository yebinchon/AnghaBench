
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc_ccitt (int,unsigned char const*,int) ;

__attribute__((used)) static inline int check_crc_ccitt(const unsigned char *buf, int cnt)
{
 return (crc_ccitt(0xffff, buf, cnt) & 0xffff) == 0xf0b8;
}
