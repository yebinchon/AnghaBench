
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void sign_extend(unsigned int count, unsigned char *dst)
{

 if ((count == 1) && dst[0] & 0x80) {
  dst[1] = 0xff;
  dst[2] = 0xff;
  dst[3] = 0xff;
 }
 if ((count == 2) && dst[1] & 0x80) {
  dst[2] = 0xff;
  dst[3] = 0xff;
 }
}
