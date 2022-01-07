
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hubdev_info {int hdi_nasid; } ;
struct TYPE_2__ {int ii_icrb0_b_regval; scalar_t__ b_mark; } ;
typedef TYPE_1__ ii_icrb0_b_u_t ;


 int IIO_ICDR ;
 int IIO_ICDR_PND ;
 int IIO_ICRB_B (int) ;
 int REMOTE_HUB_L (int ,int ) ;
 int REMOTE_HUB_S (int ,int ,int) ;
 int cpu_relax () ;

void hubiio_crb_free(struct hubdev_info *hubdev_info, int crbnum)
{
 ii_icrb0_b_u_t icrbb;





 icrbb.ii_icrb0_b_regval = REMOTE_HUB_L(hubdev_info->hdi_nasid,
            IIO_ICRB_B(crbnum));
 icrbb.b_mark = 0;
 REMOTE_HUB_S(hubdev_info->hdi_nasid, IIO_ICRB_B(crbnum),
       icrbb.ii_icrb0_b_regval);



 REMOTE_HUB_S(hubdev_info->hdi_nasid, IIO_ICDR, (IIO_ICDR_PND | crbnum));
 while (REMOTE_HUB_L(hubdev_info->hdi_nasid, IIO_ICDR) & IIO_ICDR_PND)
  cpu_relax();

}
