
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;



__attribute__((used)) static inline __u8
bitmap_to_number(__u8 bitmap)
{
 __u8 i;

 for(i=0; i<8 && !(bitmap &(1<<i)); i++)
  ;
 return i;
}
