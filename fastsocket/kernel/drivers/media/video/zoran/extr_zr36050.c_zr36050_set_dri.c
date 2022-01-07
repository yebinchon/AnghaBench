
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36050 {int dri; int name; } ;


 int ZR050_DRI_IDX ;
 int dprintk (int,char*,int ) ;
 int zr36050_pushit (struct zr36050*,int ,int,char*) ;

__attribute__((used)) static int
zr36050_set_dri (struct zr36050 *ptr)
{
 char dri_data[6];

 dprintk(3, "%s: write DRI\n", ptr->name);
 dri_data[0] = 0xff;
 dri_data[1] = 0xdd;
 dri_data[2] = 0x00;
 dri_data[3] = 0x04;
 dri_data[4] = ptr->dri >> 8;
 dri_data[5] = ptr->dri & 0xff;
 return zr36050_pushit(ptr, ZR050_DRI_IDX, 6, dri_data);
}
