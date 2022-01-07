
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_wr_wait {int ret; int completion; } ;


 int complete (int *) ;

__attribute__((used)) static inline void c4iw_wake_up(struct c4iw_wr_wait *wr_waitp, int ret)
{
 wr_waitp->ret = ret;
 complete(&wr_waitp->completion);
}
