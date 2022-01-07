
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
__attribute__((used)) static int gspca_is_compressed(__u32 format)
{
 switch (format) {
 case 131:
 case 132:
 case 128:
 case 129:
 case 130:
  return 1;
 }
 return 0;
}
