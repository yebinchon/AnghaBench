
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scm_request {int request; } ;


 int CLUSTER_SIZE ;
 int blk_rq_bytes (int ) ;
 scalar_t__ blk_rq_pos (int ) ;

__attribute__((used)) static bool clusters_intersect(struct scm_request *A, struct scm_request *B)
{
 unsigned long firstA, lastA, firstB, lastB;

 firstA = ((u64) blk_rq_pos(A->request) << 9) / CLUSTER_SIZE;
 lastA = (((u64) blk_rq_pos(A->request) << 9) +
      blk_rq_bytes(A->request) - 1) / CLUSTER_SIZE;

 firstB = ((u64) blk_rq_pos(B->request) << 9) / CLUSTER_SIZE;
 lastB = (((u64) blk_rq_pos(B->request) << 9) +
      blk_rq_bytes(B->request) - 1) / CLUSTER_SIZE;

 return (firstB <= lastA && firstA <= lastB);
}
