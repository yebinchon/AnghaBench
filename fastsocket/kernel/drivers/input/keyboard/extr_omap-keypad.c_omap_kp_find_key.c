
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY (int,int,int ) ;
 int* keymap ;

__attribute__((used)) static inline int omap_kp_find_key(int col, int row)
{
 int i, key;

 key = KEY(col, row, 0);
 for (i = 0; keymap[i] != 0; i++)
  if ((keymap[i] & 0xff000000) == key)
   return keymap[i] & 0x00ffffff;
 return -1;
}
