
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USER_DS ;
 int set_fs (int ) ;

void flush_thread(void)
{



 set_fs(USER_DS);
}
