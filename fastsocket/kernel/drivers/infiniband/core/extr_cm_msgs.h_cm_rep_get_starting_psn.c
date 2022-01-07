
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_rep_msg {int offset20; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline __be32 cm_rep_get_starting_psn(struct cm_rep_msg *rep_msg)
{
 return cpu_to_be32(be32_to_cpu(rep_msg->offset20) >> 8);
}
