
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_se401 {int bgain; int ggain; int rgain; int resetlevel; int expose_h; int expose_m; int expose_l; } ;


 int HV7131_REG_ABCG ;
 int HV7131_REG_AGCG ;
 int HV7131_REG_ARCG ;
 int HV7131_REG_ARLV ;
 int HV7131_REG_TITL ;
 int HV7131_REG_TITM ;
 int HV7131_REG_TITU ;
 int se401_set_feature (struct usb_se401*,int ,int ) ;

__attribute__((used)) static int se401_send_pict(struct usb_se401 *se401)
{

 se401_set_feature(se401, HV7131_REG_TITL, se401->expose_l);

 se401_set_feature(se401, HV7131_REG_TITM, se401->expose_m);

 se401_set_feature(se401, HV7131_REG_TITU, se401->expose_h);

 se401_set_feature(se401, HV7131_REG_ARLV, se401->resetlevel);

 se401_set_feature(se401, HV7131_REG_ARCG, se401->rgain);

 se401_set_feature(se401, HV7131_REG_AGCG, se401->ggain);

 se401_set_feature(se401, HV7131_REG_ABCG, se401->bgain);

 return 0;
}
