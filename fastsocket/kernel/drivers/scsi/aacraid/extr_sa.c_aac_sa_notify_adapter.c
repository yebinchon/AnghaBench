
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aac_dev {int dummy; } ;





 int BUG () ;
 int DOORBELL_1 ;
 int DOORBELL_2 ;
 int DOORBELL_3 ;
 int DOORBELL_4 ;
 int DOORBELL_5 ;
 int DOORBELL_6 ;
 int DoorbellReg_s ;




 int sa_writew (struct aac_dev*,int ,int ) ;

__attribute__((used)) static void aac_sa_notify_adapter(struct aac_dev *dev, u32 event)
{
 switch (event) {

 case 134:
  sa_writew(dev, DoorbellReg_s,DOORBELL_1);
  break;
 case 129:
  sa_writew(dev, DoorbellReg_s,DOORBELL_4);
  break;
 case 133:
  sa_writew(dev, DoorbellReg_s,DOORBELL_2);
  break;
 case 130:
  sa_writew(dev, DoorbellReg_s,DOORBELL_3);
  break;
 case 128:




  break;
 case 131:
  sa_writew(dev, DoorbellReg_s,DOORBELL_6);
  break;
 case 132:
  sa_writew(dev, DoorbellReg_s,DOORBELL_5);
  break;
 default:
  BUG();
  break;
 }
}
