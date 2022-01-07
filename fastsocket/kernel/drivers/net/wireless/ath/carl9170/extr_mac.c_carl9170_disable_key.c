
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct carl9170_disable_key_cmd {int user; } ;
struct ar9170 {int dummy; } ;
typedef int key ;


 int CARL9170_CMD_DKEY ;
 int carl9170_exec_cmd (struct ar9170*,int ,int,int *,int ,int *) ;
 int cpu_to_le16 (int const) ;

int carl9170_disable_key(struct ar9170 *ar, const u8 id)
{
 struct carl9170_disable_key_cmd key = { };

 key.user = cpu_to_le16(id);

 return carl9170_exec_cmd(ar, CARL9170_CMD_DKEY,
  sizeof(key), (u8 *)&key, 0, ((void*)0));
}
