
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr36050 {int width; int height; int* h_samp_ratio; int* v_samp_ratio; int name; } ;


 char BASELINE_PRECISION ;
 int NO_OF_COMPONENTS ;
 int ZR050_SOF_IDX ;
 int dprintk (int,char*,int ,int,int,int) ;
 int zr36050_pushit (struct zr36050*,int ,int,char*) ;
 char* zr36050_tq ;

__attribute__((used)) static int
zr36050_set_sof (struct zr36050 *ptr)
{
 char sof_data[34];
 int i;

 dprintk(3, "%s: write SOF (%dx%d, %d components)\n", ptr->name,
  ptr->width, ptr->height, NO_OF_COMPONENTS);
 sof_data[0] = 0xff;
 sof_data[1] = 0xc0;
 sof_data[2] = 0x00;
 sof_data[3] = (3 * NO_OF_COMPONENTS) + 8;
 sof_data[4] = BASELINE_PRECISION;
 sof_data[5] = (ptr->height) >> 8;
 sof_data[6] = (ptr->height) & 0xff;
 sof_data[7] = (ptr->width) >> 8;
 sof_data[8] = (ptr->width) & 0xff;
 sof_data[9] = NO_OF_COMPONENTS;
 for (i = 0; i < NO_OF_COMPONENTS; i++) {
  sof_data[10 + (i * 3)] = i;
  sof_data[11 + (i * 3)] = (ptr->h_samp_ratio[i] << 4) | (ptr->v_samp_ratio[i]);
  sof_data[12 + (i * 3)] = zr36050_tq[i];
 }
 return zr36050_pushit(ptr, ZR050_SOF_IDX,
         (3 * NO_OF_COMPONENTS) + 10, sof_data);
}
