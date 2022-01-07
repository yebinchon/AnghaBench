
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;


 int IWL_ERR (struct iwl_priv*,char*) ;

__attribute__((used)) static inline u8 iwl_blink_compensation(struct iwl_priv *priv,
        u8 time, u16 compensation)
{
 if (!compensation) {
  IWL_ERR(priv, "undefined blink compensation: "
   "use pre-defined blinking time\n");
  return time;
 }

 return (u8)((time * compensation) >> 6);
}
