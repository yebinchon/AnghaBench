
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static void jp_ll_rw_block(int rw, int nr, struct buffer_head *bhs[])
{
 lkdtm_handler();
 jprobe_return();
}
