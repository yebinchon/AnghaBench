
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CUR_BLINK ;
 int CUR_ON ;
 int DISP_CNT_CMD ;
 int DISP_ON ;
 int MODE_INST ;
 int pvc_write (int,int ) ;

void pvc_dispcnt(u8 cmd)
{
 pvc_write(DISP_CNT_CMD | (cmd & (DISP_ON|CUR_ON|CUR_BLINK)), MODE_INST);
}
