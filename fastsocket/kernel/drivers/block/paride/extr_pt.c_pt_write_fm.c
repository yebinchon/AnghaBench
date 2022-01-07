
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int dummy; } ;


 int ATAPI_WFM ;
 int PT_TMO ;
 int pt_media_access_cmd (struct pt_unit*,int ,char*,char*) ;

__attribute__((used)) static void pt_write_fm(struct pt_unit *tape)
{
 char wm_cmd[12] = { ATAPI_WFM, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 };

 pt_media_access_cmd(tape, PT_TMO, wm_cmd, "write filemark");
}
