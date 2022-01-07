
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CM_ASL_LID ;
 int CM_ASL_PANELPOWER ;
 int CM_ASL_TPD ;
 int CM_ASL_TYPE ;
 int cmsg_quirk (int ,char*) ;

__attribute__((used)) static void cmsg_quirks(void)
{
 cmsg_quirk(CM_ASL_LID, "LID");
 cmsg_quirk(CM_ASL_TYPE, "TYPE");
 cmsg_quirk(CM_ASL_PANELPOWER, "PANELPOWER");
 cmsg_quirk(CM_ASL_TPD, "TPD");
}
