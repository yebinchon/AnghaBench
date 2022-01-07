
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_req_msg {int primary_offset88; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_primary_packet_rate(struct cm_req_msg *req_msg,
        u8 rate)
{
 req_msg->primary_offset88 = cpu_to_be32(
        (be32_to_cpu(req_msg->primary_offset88) &
         0xFFFFFFC0) | (rate & 0x3F));
}
