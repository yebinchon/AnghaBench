
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; int data1; unsigned char data2; } ;


 scalar_t__ KIND_END ;
 TYPE_1__* ati_remote_tbl ;

__attribute__((used)) static int ati_remote_event_lookup(int rem, unsigned char d1, unsigned char d2)
{
 int i;

 for (i = 0; ati_remote_tbl[i].kind != KIND_END; i++) {



  if ((((ati_remote_tbl[i].data1 & 0x0f) == (d1 & 0x0f))) &&
      ((((ati_remote_tbl[i].data1 >> 4) -
         (d1 >> 4) + rem) & 0x0f) == 0x0f) &&
      (ati_remote_tbl[i].data2 == d2))
   return i;

 }
 return -1;
}
