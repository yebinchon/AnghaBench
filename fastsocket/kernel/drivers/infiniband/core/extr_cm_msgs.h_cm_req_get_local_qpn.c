
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_req_msg {int offset32; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline __be32 cm_req_get_local_qpn(struct cm_req_msg *req_msg)
{
 return cpu_to_be32(be32_to_cpu(req_msg->offset32) >> 8);
}
