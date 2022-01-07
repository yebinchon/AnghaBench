
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ar9170 {TYPE_1__* hw; } ;
typedef int buf ;
typedef int __le32 ;
struct TYPE_2__ {int wiphy; } ;


 int CARL9170_CMD_WREG ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,int *,int ,int *) ;
 int const cpu_to_le32 (int const) ;
 scalar_t__ net_ratelimit () ;
 int wiphy_err (int ,char*,int const,int const,int) ;

int carl9170_write_reg(struct ar9170 *ar, const u32 reg, const u32 val)
{
 const __le32 buf[2] = {
  cpu_to_le32(reg),
  cpu_to_le32(val),
 };
 int err;

 err = carl9170_exec_cmd(ar, CARL9170_CMD_WREG, sizeof(buf),
    (u8 *) buf, 0, ((void*)0));
 if (err) {
  if (net_ratelimit()) {
   wiphy_err(ar->hw->wiphy, "writing reg %#x "
    "(val %#x) failed (%d)\n", reg, val, err);
  }
 }
 return err;
}
