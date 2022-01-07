
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int CARL9170_CMD_SWRST ;
 int carl9170_exec_cmd (struct ar9170*,int ,int ,int *,int ,int *) ;

int carl9170_mac_reset(struct ar9170 *ar)
{
 return carl9170_exec_cmd(ar, CARL9170_CMD_SWRST,
     0, ((void*)0), 0, ((void*)0));
}
