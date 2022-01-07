
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slirp_pre_exec_data {int stdin; int stdout; } ;


 int run_helper (int ,struct slirp_pre_exec_data*,char**) ;
 int slirp_pre_exec ;

__attribute__((used)) static int slirp_tramp(char **argv, int fd)
{
 struct slirp_pre_exec_data pe_data;
 int pid;

 pe_data.stdin = fd;
 pe_data.stdout = fd;
 pid = run_helper(slirp_pre_exec, &pe_data, argv);

 return pid;
}
