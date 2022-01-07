
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AUTO_INC ;
 int DISP_ON ;
 int EIGHT_BYTE ;
 int LARGE_FONT ;
 int ONE_LINE ;
 int PVC_NLINES ;
 int SMALL_FONT ;
 int TWO_LINES ;
 int pvc_clear () ;
 int pvc_dispcnt (int ) ;
 int pvc_entrymode (int ) ;
 int pvc_funcset (int) ;
 int pvc_write_string_centered (char*,int) ;

int pvc_init(void)
{
 u8 cmd = EIGHT_BYTE;

 if (PVC_NLINES == 2)
  cmd |= (SMALL_FONT|TWO_LINES);
 else
  cmd |= (LARGE_FONT|ONE_LINE);
 pvc_funcset(cmd);
 pvc_dispcnt(DISP_ON);
 pvc_entrymode(AUTO_INC);

 pvc_clear();
 pvc_write_string_centered("Display", 0);
 pvc_write_string_centered("Initialized", 1);

 return 0;
}
