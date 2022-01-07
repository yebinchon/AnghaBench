
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EIGHT_BYTE ;
 int FUNC_SET_CMD ;
 int LARGE_FONT ;
 int MODE_INST ;
 int TWO_LINES ;
 int pvc_write (int,int ) ;

__attribute__((used)) static void pvc_funcset(u8 cmd)
{
 pvc_write(FUNC_SET_CMD | (cmd & (EIGHT_BYTE|TWO_LINES|LARGE_FONT)),
    MODE_INST);
}
