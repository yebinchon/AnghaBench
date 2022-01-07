
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_sidr_rep_msg {int offset8; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_sidr_rep_set_qpn(struct cm_sidr_rep_msg *sidr_rep_msg,
           __be32 qpn)
{
 sidr_rep_msg->offset8 = cpu_to_be32((be32_to_cpu(qpn) << 8) |
     (be32_to_cpu(sidr_rep_msg->offset8) &
      0x000000FF));
}
