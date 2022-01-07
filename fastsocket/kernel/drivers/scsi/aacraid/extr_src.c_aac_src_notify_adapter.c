
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int ODR_C; } ;





 int BUG () ;



 int INBOUNDDOORBELL_1 ;
 int INBOUNDDOORBELL_2 ;
 int INBOUNDDOORBELL_3 ;
 int INBOUNDDOORBELL_4 ;
 int INBOUNDDOORBELL_5 ;
 int INBOUNDDOORBELL_6 ;
 TYPE_1__ MUnit ;
 int SRC_ODR_SHIFT ;
 int src_writel (struct aac_dev*,int ,int) ;

__attribute__((used)) static void aac_src_notify_adapter(struct aac_dev *dev, u32 event)
{
 switch (event) {

 case 133:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_1 << SRC_ODR_SHIFT);
  break;
 case 128:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_4 << SRC_ODR_SHIFT);
  break;
 case 132:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_2 << SRC_ODR_SHIFT);
  break;
 case 129:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_3 << SRC_ODR_SHIFT);
  break;
 case 130:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_6 << SRC_ODR_SHIFT);
  break;
 case 131:
  src_writel(dev, MUnit.ODR_C,
   INBOUNDDOORBELL_5 << SRC_ODR_SHIFT);
  break;
 default:
  BUG();
  break;
 }
}
