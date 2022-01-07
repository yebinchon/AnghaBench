
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hubdev_info {int hdi_nasid; } ;
typedef int nasid_t ;
typedef int ioerror_t ;
struct TYPE_6__ {void* ii_icrb0_e_regval; } ;
typedef TYPE_1__ ii_icrb0_e_u_t ;
struct TYPE_7__ {scalar_t__ d_bteop; void* ii_icrb0_d_regval; } ;
typedef TYPE_2__ ii_icrb0_d_u_t ;
struct TYPE_8__ {int c_btenum; void* ii_icrb0_c_regval; } ;
typedef TYPE_3__ ii_icrb0_c_u_t ;
struct TYPE_9__ {scalar_t__ b_mark; int b_initiator; scalar_t__ b_imsgtype; int b_ecode; void* ii_icrb0_b_regval; } ;
typedef TYPE_4__ ii_icrb0_b_u_t ;
struct TYPE_10__ {void* ii_icrb0_a_regval; } ;
typedef TYPE_5__ ii_icrb0_a_u_t ;


 int IIO_ICRB_A (int) ;
 int IIO_ICRB_B (int) ;
 int IIO_ICRB_C (int) ;
 int IIO_ICRB_D (int) ;
 int IIO_ICRB_E (int) ;
 scalar_t__ IIO_ICRB_IMSGT_BTE ;
 scalar_t__ IIO_ICRB_IMSGT_SN1NET ;
 int IIO_ICRB_INIT_BTE0 ;
 int IIO_ICRB_INIT_BTE1 ;
 int IIO_NUM_CRBS ;
 int IOERROR_INIT (int *) ;
 int IOERROR_SETVALUE (int *,int ,int ) ;
 void* REMOTE_HUB_L (int ,int ) ;
 int bte_crb_error_handler (int ,int,int,int *,scalar_t__) ;
 int errortype ;
 int hubiio_crb_free (struct hubdev_info*,int) ;
 int nasid_to_cnodeid (int ) ;

void hubiio_crb_error_handler(struct hubdev_info *hubdev_info)
{
 nasid_t nasid;
 ii_icrb0_a_u_t icrba;
 ii_icrb0_b_u_t icrbb;
 ii_icrb0_c_u_t icrbc;
 ii_icrb0_d_u_t icrbd;
 ii_icrb0_e_u_t icrbe;
 int i;
 int num_errors = 0;
 ioerror_t ioerror;

 nasid = hubdev_info->hdi_nasid;
 for (i = 0; i < IIO_NUM_CRBS; i++) {

  icrbb.ii_icrb0_b_regval = REMOTE_HUB_L(nasid, IIO_ICRB_B(i));

  if (icrbb.b_mark == 0) {
   continue;
  }

  icrba.ii_icrb0_a_regval = REMOTE_HUB_L(nasid, IIO_ICRB_A(i));

  IOERROR_INIT(&ioerror);


  icrbc.ii_icrb0_c_regval = REMOTE_HUB_L(nasid, IIO_ICRB_C(i));
  icrbd.ii_icrb0_d_regval = REMOTE_HUB_L(nasid, IIO_ICRB_D(i));
  icrbe.ii_icrb0_e_regval = REMOTE_HUB_L(nasid, IIO_ICRB_E(i));

  IOERROR_SETVALUE(&ioerror, errortype, icrbb.b_ecode);




  if (icrbd.d_bteop ||
      ((icrbb.b_initiator == IIO_ICRB_INIT_BTE0 ||
        icrbb.b_initiator == IIO_ICRB_INIT_BTE1) &&
       (icrbb.b_imsgtype == IIO_ICRB_IMSGT_BTE ||
        icrbb.b_imsgtype == IIO_ICRB_IMSGT_SN1NET))) {

   int bte_num;

   if (icrbd.d_bteop)
    bte_num = icrbc.c_btenum;
   else
    bte_num = (icrbb.b_initiator & 0x4) >> 2;

   hubiio_crb_free(hubdev_info, i);

   bte_crb_error_handler(nasid_to_cnodeid(nasid), bte_num,
           i, &ioerror, icrbd.d_bteop);
   num_errors++;
   continue;
  }
 }
}
