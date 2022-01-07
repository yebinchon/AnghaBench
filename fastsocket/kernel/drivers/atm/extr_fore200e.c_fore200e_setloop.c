
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fore200e {int loop_mode; } ;





 int CAP_NET_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int SUNI_MCT ;
 int SUNI_MCT_DLE ;
 int SUNI_MCT_LLE ;
 int capable (int ) ;
 int fore200e_set_oc3 (struct fore200e*,int ,int,int) ;

__attribute__((used)) static int
fore200e_setloop(struct fore200e* fore200e, int loop_mode)
{
    u32 mct_value, mct_mask;
    int error;

    if (!capable(CAP_NET_ADMIN))
 return -EPERM;

    switch (loop_mode) {

    case 129:
 mct_value = 0;
 mct_mask = SUNI_MCT_DLE | SUNI_MCT_LLE;
 break;

    case 130:
 mct_value = mct_mask = SUNI_MCT_DLE;
 break;

    case 128:
 mct_value = mct_mask = SUNI_MCT_LLE;
 break;

    default:
 return -EINVAL;
    }

    error = fore200e_set_oc3(fore200e, SUNI_MCT, mct_value, mct_mask);
    if (error == 0)
 fore200e->loop_mode = loop_mode;

    return error;
}
