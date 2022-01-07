
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int status; } ;


 int IPW_DEBUG_SCAN (char*) ;
 int STATUS_SCANNING ;

__attribute__((used)) static void isr_indicate_scanning(struct ipw2100_priv *priv, u32 status)
{
 IPW_DEBUG_SCAN("Scanning...\n");
 priv->status |= STATUS_SCANNING;
}
