
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int dummy; } ;
struct TYPE_2__ {int initialized; int camera_model; } ;






 TYPE_1__* IBMCAM_T (struct uvd*) ;
 int ibmcam_model1_setup (struct uvd*) ;
 int ibmcam_model2_setup (struct uvd*) ;

__attribute__((used)) static int ibmcam_setup_on_open(struct uvd *uvd)
{
 int setup_ok = 0;

 if (!IBMCAM_T(uvd)->initialized) {
  switch (IBMCAM_T(uvd)->camera_model) {
  case 131:
   setup_ok = ibmcam_model1_setup(uvd);
   break;
  case 130:
   setup_ok = ibmcam_model2_setup(uvd);
   break;
  case 129:
  case 128:

   break;
  }
  IBMCAM_T(uvd)->initialized = (setup_ok != 0);
 }
 return setup_ok;
}
