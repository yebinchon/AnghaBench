
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*) ;

__attribute__((used)) static void netiucv_banner(void)
{
 pr_info("driver initialized\n");
}
