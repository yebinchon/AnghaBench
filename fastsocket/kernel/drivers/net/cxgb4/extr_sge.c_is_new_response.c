
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_rspq {scalar_t__ gen; } ;
struct rsp_ctrl {int type_gen; } ;


 scalar_t__ RSPD_GEN (int ) ;

__attribute__((used)) static inline bool is_new_response(const struct rsp_ctrl *r,
       const struct sge_rspq *q)
{
 return RSPD_GEN(r->type_gen) == q->gen;
}
