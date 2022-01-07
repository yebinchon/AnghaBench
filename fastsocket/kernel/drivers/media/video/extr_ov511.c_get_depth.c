
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
get_depth(int palette)
{
 switch (palette) {
 case 130: return 8;
 case 129: return 12;
 case 128: return 12;
 default: return 0;
 }
}
