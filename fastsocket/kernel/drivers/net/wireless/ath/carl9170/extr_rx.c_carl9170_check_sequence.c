
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int cmd_bufs; } ;
struct ar9170 {int cmd_seq; TYPE_2__ fw; TYPE_1__* hw; } ;
struct TYPE_3__ {int wiphy; } ;


 int CARL9170_RR_LOST_RSP ;
 int EIO ;
 int carl9170_restart (struct ar9170*,int ) ;
 int wiphy_err (int ,char*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int carl9170_check_sequence(struct ar9170 *ar, unsigned int seq)
{
 if (ar->cmd_seq < -1)
  return 0;




 if (ar->cmd_seq < 0)
  ar->cmd_seq = seq;







 if (seq != ar->cmd_seq) {
  int count;

  count = (seq - ar->cmd_seq) % ar->fw.cmd_bufs;

  wiphy_err(ar->hw->wiphy, "lost %d command responses/traps! "
     "w:%d g:%d\n", count, ar->cmd_seq, seq);

  carl9170_restart(ar, CARL9170_RR_LOST_RSP);
  return -EIO;
 }

 ar->cmd_seq = (ar->cmd_seq + 1) % ar->fw.cmd_bufs;
 return 0;
}
