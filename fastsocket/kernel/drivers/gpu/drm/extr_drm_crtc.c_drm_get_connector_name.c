
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {size_t connector_type; int connector_type_id; } ;
struct TYPE_2__ {char* name; } ;


 TYPE_1__* drm_connector_enum_list ;
 int snprintf (char*,int,char*,char*,int) ;

char *drm_get_connector_name(struct drm_connector *connector)
{
 static char buf[32];

 snprintf(buf, 32, "%s-%d",
   drm_connector_enum_list[connector->connector_type].name,
   connector->connector_type_id);
 return buf;
}
