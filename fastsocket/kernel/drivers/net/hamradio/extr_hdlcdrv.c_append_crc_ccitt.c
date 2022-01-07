
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc_ccitt (int,unsigned char*,int) ;

__attribute__((used)) static inline void append_crc_ccitt(unsigned char *buffer, int len)
{
  unsigned int crc = crc_ccitt(0xffff, buffer, len) ^ 0xffff;
 buffer += len;
 *buffer++ = crc;
 *buffer++ = crc >> 8;
}
