
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cm_lap_msg {int offset12; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static inline u8 cm_lap_get_remote_resp_timeout(struct cm_lap_msg *lap_msg)
{
 return (u8) ((be32_to_cpu(lap_msg->offset12) & 0xF8) >> 3);
}
