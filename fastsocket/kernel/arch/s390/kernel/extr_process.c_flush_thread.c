
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIF_USEDFPU ;
 int clear_tsk_thread_flag (int ,int ) ;
 int clear_used_math () ;
 int current ;

void flush_thread(void)
{
 clear_used_math();
 clear_tsk_thread_flag(current, TIF_USEDFPU);
}
