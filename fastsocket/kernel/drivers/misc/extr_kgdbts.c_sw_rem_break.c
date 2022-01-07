
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int break_helper (char*,char*,int ) ;
 scalar_t__ force_hwbrks ;

__attribute__((used)) static void sw_rem_break(char *arg)
{
 break_helper(force_hwbrks ? "z1" : "z0", arg, 0);
}
