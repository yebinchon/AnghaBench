
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slirp_pre_exec_data {int stdin; int stdout; } ;


 int dup2 (int,int) ;

__attribute__((used)) static void slirp_pre_exec(void *arg)
{
 struct slirp_pre_exec_data *data = arg;

 if (data->stdin != -1)
  dup2(data->stdin, 0);
 if (data->stdout != -1)
  dup2(data->stdout, 1);
}
