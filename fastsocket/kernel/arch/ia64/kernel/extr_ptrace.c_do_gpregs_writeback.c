
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_frame_info {int dummy; } ;


 int do_sync_rbs (struct unw_frame_info*,int ) ;
 int ia64_sync_user_rbs ;

__attribute__((used)) static void do_gpregs_writeback(struct unw_frame_info *info, void *arg)
{
 do_sync_rbs(info, ia64_sync_user_rbs);
}
