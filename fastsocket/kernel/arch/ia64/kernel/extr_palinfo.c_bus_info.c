
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int s64 ;
struct TYPE_5__ {int pal_bus_features_val; } ;
typedef TYPE_1__ pal_bus_features_u_t ;


 char** bus_features ;
 int ia64_pal_bus_get_features (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int sprintf (char*,char*,char const*,char*,char*,char*) ;

__attribute__((used)) static int
bus_info(char *page)
{
 char *p = page;
 const char **v = bus_features;
 pal_bus_features_u_t av, st, ct;
 u64 avail, status, control;
 int i;
 s64 ret;

 if ((ret=ia64_pal_bus_get_features(&av, &st, &ct)) != 0) return 0;

 avail = av.pal_bus_features_val;
 status = st.pal_bus_features_val;
 control = ct.pal_bus_features_val;

 for(i=0; i < 64; i++, v++, avail >>=1, status >>=1, control >>=1) {
  if ( ! *v ) continue;
  p += sprintf(p, "%-48s : %s%s %s\n", *v,
    avail & 0x1 ? "" : "NotImpl",
    avail & 0x1 ? (status & 0x1 ? "On" : "Off"): "",
    avail & 0x1 ? (control & 0x1 ? "Ctrl" : "NoCtrl"): "");
 }
 return p - page;
}
