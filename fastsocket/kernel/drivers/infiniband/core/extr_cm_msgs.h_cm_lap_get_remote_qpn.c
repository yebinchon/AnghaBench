
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm_lap_msg {int offset12; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline __be32 cm_lap_get_remote_qpn(struct cm_lap_msg *lap_msg)
{
 return cpu_to_be32(be32_to_cpu(lap_msg->offset12) >> 8);
}
