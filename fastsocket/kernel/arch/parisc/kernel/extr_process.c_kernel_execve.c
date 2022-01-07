
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __execve (char const*,char* const*,char* const*,int ) ;
 int current ;

int kernel_execve(const char *filename, char *const argv[], char *const envp[])
{
 return __execve(filename, argv, envp, current);
}
