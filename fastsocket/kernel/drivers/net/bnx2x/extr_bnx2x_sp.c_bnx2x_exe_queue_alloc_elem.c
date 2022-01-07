
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_exeq_elem {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int DP (int ,char*) ;
 int GFP_ATOMIC ;
 struct bnx2x_exeq_elem* kzalloc (int,int ) ;

__attribute__((used)) static inline struct bnx2x_exeq_elem *bnx2x_exe_queue_alloc_elem(
 struct bnx2x *bp)
{
 DP(BNX2X_MSG_SP, "Allocating a new exe_queue element\n");
 return kzalloc(sizeof(struct bnx2x_exeq_elem), GFP_ATOMIC);
}
