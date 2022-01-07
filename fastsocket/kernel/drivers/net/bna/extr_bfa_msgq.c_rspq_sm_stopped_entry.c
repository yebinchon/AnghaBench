
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_rspq {scalar_t__ flags; scalar_t__ consumer_index; scalar_t__ producer_index; } ;



__attribute__((used)) static void
rspq_sm_stopped_entry(struct bfa_msgq_rspq *rspq)
{
 rspq->producer_index = 0;
 rspq->consumer_index = 0;
 rspq->flags = 0;
}
