
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int primary_offset88; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_primary_flow_label(struct cm_req_msg *req_msg,
       __be32 flow_label)
{
 req_msg->primary_offset88 = cpu_to_be32(
        (be32_to_cpu(req_msg->primary_offset88) &
         0x00000FFF) |
         (be32_to_cpu(flow_label) << 12));
}
