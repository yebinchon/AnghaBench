
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void enhance_picture(unsigned char *frame, int len)
{
 while (len--) {
  *frame = (((*frame^255)*(*frame^255))/255)^255;
  frame++;
 }
}
