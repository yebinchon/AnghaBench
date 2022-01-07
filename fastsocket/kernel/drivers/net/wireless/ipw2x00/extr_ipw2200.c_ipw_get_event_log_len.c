
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int dummy; } ;


 int IPW_EVENT_LOG ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;

__attribute__((used)) static inline u32 ipw_get_event_log_len(struct ipw_priv *priv)
{

 return ipw_read_reg32(priv, ipw_read32(priv, IPW_EVENT_LOG));
}
