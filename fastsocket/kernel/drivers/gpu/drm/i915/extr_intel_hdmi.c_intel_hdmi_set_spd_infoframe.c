
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int sdi; int pd; int vn; } ;
struct TYPE_4__ {TYPE_1__ spd; } ;
struct dip_infoframe {TYPE_2__ body; int len; int ver; int type; } ;
typedef int spd_if ;


 int DIP_LEN_SPD ;
 int DIP_SPD_PC ;
 int DIP_TYPE_SPD ;
 int DIP_VERSION_SPD ;
 int intel_set_infoframe (struct drm_encoder*,struct dip_infoframe*) ;
 int memset (struct dip_infoframe*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void intel_hdmi_set_spd_infoframe(struct drm_encoder *encoder)
{
 struct dip_infoframe spd_if;

 memset(&spd_if, 0, sizeof(spd_if));
 spd_if.type = DIP_TYPE_SPD;
 spd_if.ver = DIP_VERSION_SPD;
 spd_if.len = DIP_LEN_SPD;
 strcpy(spd_if.body.spd.vn, "Intel");
 strcpy(spd_if.body.spd.pd, "Integrated gfx");
 spd_if.body.spd.sdi = DIP_SPD_PC;

 intel_set_infoframe(encoder, &spd_if);
}
