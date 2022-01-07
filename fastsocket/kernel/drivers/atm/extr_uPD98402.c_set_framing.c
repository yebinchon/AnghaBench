
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int C11T ;
 int C12T ;
 int C13T ;
 int EINVAL ;
 char const GET (int ) ;
 int MDR ;
 TYPE_1__* PRIV (struct atm_dev*) ;
 int PUT (char const,int ) ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 char const uPD98402_MDR_SS_MASK ;
 char const uPD98402_MDR_SS_SHIFT ;

__attribute__((used)) static int set_framing(struct atm_dev *dev,unsigned char framing)
{
 static const unsigned char sonet[] = { 1,2,3,0 };
 static const unsigned char sdh[] = { 1,0,0,2 };
 const char *set;
 unsigned long flags;

 switch (framing) {
  case 128:
   set = sonet;
   break;
  case 129:
   set = sdh;
   break;
  default:
   return -EINVAL;
 }
 spin_lock_irqsave(&PRIV(dev)->lock, flags);
 PUT(set[0],C11T);
 PUT(set[1],C12T);
 PUT(set[2],C13T);
 PUT((GET(MDR) & ~uPD98402_MDR_SS_MASK) | (set[3] <<
     uPD98402_MDR_SS_SHIFT),MDR);
 spin_unlock_irqrestore(&PRIV(dev)->lock, flags);
 return 0;
}
