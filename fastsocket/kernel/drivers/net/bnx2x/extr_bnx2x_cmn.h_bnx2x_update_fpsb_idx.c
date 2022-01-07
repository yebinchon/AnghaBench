
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_fastpath {int * sb_running_index; int fp_hc_idx; } ;


 size_t SM_RX_ID ;
 int barrier () ;

__attribute__((used)) static inline void bnx2x_update_fpsb_idx(struct bnx2x_fastpath *fp)
{
 barrier();
 fp->fp_hc_idx = fp->sb_running_index[SM_RX_ID];
}
