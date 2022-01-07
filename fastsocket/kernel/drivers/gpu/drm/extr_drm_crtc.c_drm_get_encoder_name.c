
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct drm_encoder {size_t encoder_type; TYPE_1__ base; } ;
struct TYPE_4__ {char* name; } ;


 TYPE_2__* drm_encoder_enum_list ;
 int snprintf (char*,int,char*,char*,int) ;

char *drm_get_encoder_name(struct drm_encoder *encoder)
{
 static char buf[32];

 snprintf(buf, 32, "%s-%d",
   drm_encoder_enum_list[encoder->encoder_type].name,
   encoder->base.id);
 return buf;
}
