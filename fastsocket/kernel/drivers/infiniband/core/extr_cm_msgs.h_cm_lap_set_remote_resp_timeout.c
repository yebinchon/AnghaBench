
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset12; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void cm_lap_set_remote_resp_timeout(struct cm_lap_msg *lap_msg,
        u8 resp_timeout)
{
 lap_msg->offset12 = cpu_to_be32((resp_timeout << 3) |
      (be32_to_cpu(lap_msg->offset12) &
       0xFFFFFF07));
}
