
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_srq_context {int logstride; int log_page_size; int state_logsize_srqn; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int srq_get_mtt_size(struct mlx4_srq_context *srqc)
{
 int log_srq_size = (be32_to_cpu(srqc->state_logsize_srqn) >> 24) & 0xf;
 int log_rq_stride = srqc->logstride & 7;
 int page_shift = (srqc->log_page_size & 0x3f) + 12;

 if (log_srq_size + log_rq_stride + 4 < page_shift)
  return 1;

 return 1 << (log_srq_size + log_rq_stride + 4 - page_shift);
}
