
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int filter_state; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FILTER_RX_MODE_PENDING ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static
void bnx2x_vf_handle_filters_eqe(struct bnx2x *bp,
     struct bnx2x_virtf *vf)
{
 smp_mb__before_clear_bit();
 clear_bit(BNX2X_FILTER_RX_MODE_PENDING, &vf->filter_state);
 smp_mb__after_clear_bit();
}
