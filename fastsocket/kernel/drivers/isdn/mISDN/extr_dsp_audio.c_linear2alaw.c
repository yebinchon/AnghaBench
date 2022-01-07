
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMI_MASK ;

__attribute__((used)) static inline unsigned char linear2alaw(short int linear)
{
 int mask;
 int seg;
 int pcm_val;
 static int seg_end[8] = {
  0xFF, 0x1FF, 0x3FF, 0x7FF, 0xFFF, 0x1FFF, 0x3FFF, 0x7FFF
 };

 pcm_val = linear;
 if (pcm_val >= 0) {

  mask = AMI_MASK | 0x80;
 } else {

  mask = AMI_MASK;
  pcm_val = -pcm_val;
 }


 for (seg = 0; seg < 8; seg++) {
  if (pcm_val <= seg_end[seg])
   break;
 }

 return ((seg << 4) |
   ((pcm_val >> ((seg) ? (seg + 3) : 4)) & 0x0F)) ^ mask;
}
