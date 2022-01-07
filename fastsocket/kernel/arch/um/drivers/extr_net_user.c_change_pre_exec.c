
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change_pre_exec_data {int stdout; int close_me; } ;


 int close (int ) ;
 int dup2 (int ,int) ;

__attribute__((used)) static void change_pre_exec(void *arg)
{
 struct change_pre_exec_data *data = arg;

 close(data->close_me);
 dup2(data->stdout, 1);
}
