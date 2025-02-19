
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36060 {int name; } ;


 int NO_OF_COMPONENTS ;
 int ZR060_SOS_IDX ;
 int dprintk (int,char*,int ) ;
 int zr36060_pushit (struct zr36060*,int ,int,char*) ;
 int* zr36060_ta ;
 int* zr36060_td ;

__attribute__((used)) static int
zr36060_set_sos (struct zr36060 *ptr)
{
 char sos_data[16];
 int i;

 dprintk(3, "%s: write SOS\n", ptr->name);
 sos_data[0] = 0xff;
 sos_data[1] = 0xda;
 sos_data[2] = 0x00;
 sos_data[3] = 2 + 1 + (2 * NO_OF_COMPONENTS) + 3;
 sos_data[4] = NO_OF_COMPONENTS;
 for (i = 0; i < NO_OF_COMPONENTS; i++) {
  sos_data[5 + (i * 2)] = i;
  sos_data[6 + (i * 2)] = (zr36060_td[i] << 4) |
     zr36060_ta[i];
 }
 sos_data[2 + 1 + (2 * NO_OF_COMPONENTS) + 2] = 00;
 sos_data[2 + 1 + (2 * NO_OF_COMPONENTS) + 3] = 0x3f;
 sos_data[2 + 1 + (2 * NO_OF_COMPONENTS) + 4] = 00;
 return zr36060_pushit(ptr, ZR060_SOS_IDX,
         4 + 1 + (2 * NO_OF_COMPONENTS) + 3,
         sos_data);
}
