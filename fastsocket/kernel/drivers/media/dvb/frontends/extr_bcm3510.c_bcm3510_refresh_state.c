
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bcm3510_state {int status_check_interval; scalar_t__ next_status_check; int status2; int status1; } ;


 int CMD_STATUS ;
 int HZ ;
 int MSGID_STATUS1 ;
 int MSGID_STATUS2 ;
 int bcm3510_do_hab_cmd (struct bcm3510_state*,int ,int ,int *,int ,int *,int) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int bcm3510_refresh_state(struct bcm3510_state *st)
{
 if (time_after(jiffies,st->next_status_check)) {
  bcm3510_do_hab_cmd(st, CMD_STATUS, MSGID_STATUS1, ((void*)0),0, (u8 *)&st->status1, sizeof(st->status1));
  bcm3510_do_hab_cmd(st, CMD_STATUS, MSGID_STATUS2, ((void*)0),0, (u8 *)&st->status2, sizeof(st->status2));
  st->next_status_check = jiffies + (st->status_check_interval*HZ)/1000;
 }
 return 0;
}
