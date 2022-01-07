
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {int dummy; } ;
typedef int buf ;


 int EIO ;
 int S35390A_CMD_STATUS2 ;
 char S35390A_FLAG_TEST ;
 scalar_t__ s35390a_get_reg (struct s35390a*,int ,char*,int) ;
 int s35390a_set_reg (struct s35390a*,int ,char*,int) ;

__attribute__((used)) static int s35390a_disable_test_mode(struct s35390a *s35390a)
{
 char buf[1];

 if (s35390a_get_reg(s35390a, S35390A_CMD_STATUS2, buf, sizeof(buf)) < 0)
  return -EIO;

 if (!(buf[0] & S35390A_FLAG_TEST))
  return 0;

 buf[0] &= ~S35390A_FLAG_TEST;
 return s35390a_set_reg(s35390a, S35390A_CMD_STATUS2, buf, sizeof(buf));
}
