
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int pi; } ;


 int HZ ;
 int pi_disconnect (int ) ;
 scalar_t__ pt_command (struct pt_unit*,char*,int ,char*) ;
 int pt_poll_dsc (struct pt_unit*,int ,int,char*) ;
 int pt_req_sense (struct pt_unit*,int ) ;

__attribute__((used)) static void pt_media_access_cmd(struct pt_unit *tape, int tmo, char *cmd, char *fun)
{
 if (pt_command(tape, cmd, 0, fun)) {
  pt_req_sense(tape, 0);
  return;
 }
 pi_disconnect(tape->pi);
 pt_poll_dsc(tape, HZ, tmo, fun);
}
