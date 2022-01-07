
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_config {int supported; } ;


 int FW_PORT_CAP_SPEED_10G ;

__attribute__((used)) static inline bool is_10g_port(const struct link_config *lc)
{
 return (lc->supported & FW_PORT_CAP_SPEED_10G) != 0;
}
