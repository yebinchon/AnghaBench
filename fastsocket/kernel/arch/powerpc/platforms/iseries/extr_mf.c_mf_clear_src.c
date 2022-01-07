
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signal_ce_msg_simple (int,int *) ;

__attribute__((used)) static void mf_clear_src(void)
{
 signal_ce_msg_simple(0x4b, ((void*)0));
}
