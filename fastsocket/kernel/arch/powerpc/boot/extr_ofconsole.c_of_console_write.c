
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_call_prom (char*,int,int,int ,char const*,int) ;
 int of_stdout_handle ;

__attribute__((used)) static void of_console_write(const char *buf, int len)
{
 of_call_prom("write", 3, 1, of_stdout_handle, buf, len);
}
