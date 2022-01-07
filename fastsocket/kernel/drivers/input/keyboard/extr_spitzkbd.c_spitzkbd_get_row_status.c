
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPLR0 ;
 int GPLR1 ;
 int GPLR2 ;

__attribute__((used)) static inline int spitzkbd_get_row_status(int col)
{
 return ((GPLR0 >> 12) & 0x01) | ((GPLR0 >> 16) & 0x02)
  | ((GPLR2 >> 25) & 0x04) | ((GPLR1 << 1) & 0x08)
  | ((GPLR1 >> 0) & 0x10) | ((GPLR1 >> 1) & 0x60);
}
