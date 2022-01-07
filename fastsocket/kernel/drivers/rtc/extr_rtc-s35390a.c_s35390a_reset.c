
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {int dummy; } ;
typedef int buf ;


 int EIO ;
 int S35390A_CMD_STATUS1 ;
 char S35390A_FLAG_24H ;
 char S35390A_FLAG_BLD ;
 char S35390A_FLAG_POC ;
 char S35390A_FLAG_RESET ;
 scalar_t__ s35390a_get_reg (struct s35390a*,int ,char*,int) ;
 int s35390a_set_reg (struct s35390a*,int ,char*,int) ;

__attribute__((used)) static int s35390a_reset(struct s35390a *s35390a)
{
 char buf[1];

 if (s35390a_get_reg(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf)) < 0)
  return -EIO;

 if (!(buf[0] & (S35390A_FLAG_POC | S35390A_FLAG_BLD)))
  return 0;

 buf[0] |= (S35390A_FLAG_RESET | S35390A_FLAG_24H);
 buf[0] &= 0xf0;
 return s35390a_set_reg(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf));
}
