
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int is_buf_blank(uint8_t *buf, size_t len)
{
 for (; len > 0; len--)
  if (*buf++ != 0xff)
   return 0;
 return 1;
}
