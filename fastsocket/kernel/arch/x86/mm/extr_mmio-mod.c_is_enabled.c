
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_read (int *) ;
 int mmiotrace_enabled ;

__attribute__((used)) static bool is_enabled(void)
{
 return atomic_read(&mmiotrace_enabled);
}
