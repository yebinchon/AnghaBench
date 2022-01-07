
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {int loop_mode; } ;


 int EINVAL ;
 unsigned char GET (int ) ;
 int MDR ;
 TYPE_1__* PRIV (struct atm_dev*) ;
 int PUT (unsigned char,int ) ;



 int __ATM_LM_XTLOC (int) ;
 int __ATM_LM_XTRMT (int) ;
 unsigned char uPD98402_MDR_ALP ;
 unsigned char uPD98402_MDR_RPLP ;
 unsigned char uPD98402_MDR_TPLP ;

__attribute__((used)) static int set_loopback(struct atm_dev *dev,int mode)
{
 unsigned char mode_reg;

 mode_reg = GET(MDR) & ~(uPD98402_MDR_TPLP | uPD98402_MDR_ALP |
     uPD98402_MDR_RPLP);
 switch (__ATM_LM_XTLOC(mode)) {
  case 129:
   break;
  case 128:
   mode_reg |= uPD98402_MDR_TPLP;
   break;
  case 130:
   mode_reg |= uPD98402_MDR_ALP;
   break;
  default:
   return -EINVAL;
 }
 switch (__ATM_LM_XTRMT(mode)) {
  case 129:
   break;
  case 128:
   mode_reg |= uPD98402_MDR_RPLP;
   break;
  default:
   return -EINVAL;
 }
 PUT(mode_reg,MDR);
 PRIV(dev)->loop_mode = mode;
 return 0;
}
