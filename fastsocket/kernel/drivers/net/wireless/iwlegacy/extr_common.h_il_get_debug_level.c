
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int dummy; } ;


 int il_debug_level ;

__attribute__((used)) static inline u32
il_get_debug_level(struct il_priv *il)
{
 return il_debug_level;
}
