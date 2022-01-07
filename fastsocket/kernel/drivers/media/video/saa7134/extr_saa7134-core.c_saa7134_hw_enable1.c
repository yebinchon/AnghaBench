
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;


 int SAA7134_FIFO_SIZE ;
 int SAA7134_MAIN_CTRL ;
 int SAA7134_MAIN_CTRL_APLLE ;
 int SAA7134_MAIN_CTRL_EBDAC ;
 int SAA7134_MAIN_CTRL_ESFE ;
 int SAA7134_MAIN_CTRL_EVFE1 ;
 int SAA7134_MAIN_CTRL_EVFE2 ;
 int SAA7134_MAIN_CTRL_EXOSC ;
 int SAA7134_MAIN_CTRL_VPLLE ;
 int SAA7134_SOURCE_TIMING2 ;
 int SAA7134_SPECIAL_MODE ;
 int SAA7134_THRESHOULD ;
 int saa_writeb (int ,int) ;
 int saa_writel (int ,int) ;

__attribute__((used)) static int saa7134_hw_enable1(struct saa7134_dev *dev)
{

 saa_writel(SAA7134_FIFO_SIZE, 0x08070503);
 saa_writel(SAA7134_THRESHOULD, 0x02020202);


 saa_writel(SAA7134_MAIN_CTRL,
   SAA7134_MAIN_CTRL_VPLLE |
   SAA7134_MAIN_CTRL_APLLE |
   SAA7134_MAIN_CTRL_EXOSC |
   SAA7134_MAIN_CTRL_EVFE1 |
   SAA7134_MAIN_CTRL_EVFE2 |
   SAA7134_MAIN_CTRL_ESFE |
   SAA7134_MAIN_CTRL_EBDAC);
 saa_writeb(SAA7134_SPECIAL_MODE, 0x01);


 saa_writeb(SAA7134_SOURCE_TIMING2, 0x20);

 return 0;
}
