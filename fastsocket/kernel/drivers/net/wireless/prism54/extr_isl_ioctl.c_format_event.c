
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct obj_mlme {int code; int address; } ;
struct TYPE_3__ {scalar_t__ iw_mode; } ;
typedef TYPE_1__ islpci_private ;


 int BUG_ON (int) ;
 int IW_CUSTOM_MAX ;
 scalar_t__ IW_MODE_MASTER ;
 int snprintf (char*,int,char*,char const*,char*,int ,char*,int) ;

__attribute__((used)) static void
format_event(islpci_private *priv, char *dest, const char *str,
      const struct obj_mlme *mlme, u16 *length, int error)
{
 int n = snprintf(dest, IW_CUSTOM_MAX,
    "%s %s %pM %s (%2.2X)",
    str,
    ((priv->iw_mode == IW_MODE_MASTER) ? "from" : "to"),
    mlme->address,
    (error ? (mlme->code ? " : REJECTED " : " : ACCEPTED ")
     : ""), mlme->code);
 BUG_ON(n > IW_CUSTOM_MAX);
 *length = n;
}
