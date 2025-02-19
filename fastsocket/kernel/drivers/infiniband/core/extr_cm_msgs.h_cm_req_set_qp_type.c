
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int offset51; void* offset40; } ;
typedef enum ib_qp_type { ____Placeholder_ib_qp_type } ib_qp_type ;




 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_req_set_qp_type(struct cm_req_msg *req_msg,
          enum ib_qp_type qp_type)
{
 switch(qp_type) {
 case 129:
  req_msg->offset40 = cpu_to_be32((be32_to_cpu(
        req_msg->offset40) &
         0xFFFFFFF9) | 0x2);
  break;
 case 128:
  req_msg->offset40 = cpu_to_be32((be32_to_cpu(
       req_msg->offset40) &
         0xFFFFFFF9) | 0x6);
  req_msg->offset51 = (req_msg->offset51 & 0xF8) | 1;
  break;
 default:
  req_msg->offset40 = cpu_to_be32(be32_to_cpu(
       req_msg->offset40) &
        0xFFFFFFF9);
 }
}
