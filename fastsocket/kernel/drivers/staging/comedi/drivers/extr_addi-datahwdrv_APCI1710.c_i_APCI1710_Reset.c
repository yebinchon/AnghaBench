
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {int* dw_MolduleConfiguration; int b_BoardVersion; scalar_t__ ui_Address; } ;
struct TYPE_4__ {TYPE_1__ s_BoardInfos; } ;


 TYPE_2__* devpriv ;
 void* inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

int i_APCI1710_Reset(struct comedi_device *dev)
{
 int ret;
 unsigned int dw_Dummy;




 ret = inl(devpriv->s_BoardInfos.ui_Address + 60);
 devpriv->s_BoardInfos.dw_MolduleConfiguration[0] = ret;

 ret = inl(devpriv->s_BoardInfos.ui_Address + 124);
 devpriv->s_BoardInfos.dw_MolduleConfiguration[1] = ret;

 ret = inl(devpriv->s_BoardInfos.ui_Address + 188);
 devpriv->s_BoardInfos.dw_MolduleConfiguration[2] = ret;

 ret = inl(devpriv->s_BoardInfos.ui_Address + 252);
 devpriv->s_BoardInfos.dw_MolduleConfiguration[3] = ret;


 outl(0x83838383, devpriv->s_BoardInfos.ui_Address + 0x60);

 devpriv->s_BoardInfos.b_BoardVersion = 1;


 dw_Dummy = inl(devpriv->s_BoardInfos.ui_Address + 0x38);
 outl(dw_Dummy | 0x2000, devpriv->s_BoardInfos.ui_Address + 0x38);

 return 0;
}
