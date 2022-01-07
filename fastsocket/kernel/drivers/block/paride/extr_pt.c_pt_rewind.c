
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int dummy; } ;


 char ATAPI_REWIND ;
 int PT_REWIND_TMO ;
 int pt_media_access_cmd (struct pt_unit*,int ,char*,char*) ;

__attribute__((used)) static void pt_rewind(struct pt_unit *tape)
{
 char rw_cmd[12] = { ATAPI_REWIND, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

 pt_media_access_cmd(tape, PT_REWIND_TMO, rw_cmd, "rewind");
}
