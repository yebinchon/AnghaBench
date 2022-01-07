
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {unsigned int rq_count; } ;



__attribute__((used)) static inline unsigned int enic_cq_wq(struct enic *enic, unsigned int wq)
{
 return enic->rq_count + wq;
}
