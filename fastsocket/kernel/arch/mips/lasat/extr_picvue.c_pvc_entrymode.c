
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AUTO_INC ;
 int CURSOR_FOLLOWS_DISP ;
 int ENTRYMODE_CMD ;
 int MODE_INST ;
 int pvc_write (int,int ) ;

__attribute__((used)) static void pvc_entrymode(u8 cmd)
{
 pvc_write(ENTRYMODE_CMD | (cmd & (AUTO_INC|CURSOR_FOLLOWS_DISP)),
    MODE_INST);
}
