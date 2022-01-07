
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_9__ {int* dw_MolduleConfiguration; scalar_t__ ui_Address; } ;
struct TYPE_10__ {TYPE_4__ s_BoardInfos; TYPE_3__* s_ModuleInfo; int tsk_Current; } ;
struct TYPE_7__ {TYPE_1__* s_TorCounterInfo; } ;
struct TYPE_8__ {TYPE_2__ s_TorCounterModuleInfo; } ;
struct TYPE_6__ {unsigned char b_InterruptEnable; } ;


 unsigned char APCI1710_CONTINUOUS ;


 unsigned char APCI1710_SINGLE ;
 int APCI1710_TOR_COUNTER ;
 unsigned char APCI1710_TOR_DOUBLE_MODE ;
 unsigned char APCI1710_TOR_QUADRUPLE_MODE ;
 unsigned char APCI1710_TOR_SIMPLE_MODE ;
 scalar_t__ CR_AREF (int ) ;
 int DPRINTK (char*) ;
 int current ;
 TYPE_5__* devpriv ;
 unsigned int inl (int ) ;
 int outl (int,int ) ;

int i_APCI1710_InsnWriteEnableDisableTorCounter(struct comedi_device *dev,
 struct comedi_subdevice *s, struct comedi_insn *insn, unsigned int *data)
{
 int i_ReturnValue = 0;
 unsigned int dw_Status;
 unsigned int dw_DummyRead;
 unsigned int dw_ConfigReg;
 unsigned char b_ModulNbr, b_Action;
 unsigned char b_TorCounter;
 unsigned char b_InputMode;
 unsigned char b_ExternGate;
 unsigned char b_CycleMode;
 unsigned char b_InterruptEnable;

 b_ModulNbr = (unsigned char) CR_AREF(insn->chanspec);
 b_Action = (unsigned char) data[0];
 b_TorCounter = (unsigned char) data[1];
 b_InputMode = (unsigned char) data[2];
 b_ExternGate = (unsigned char) data[3];
 b_CycleMode = (unsigned char) data[4];
 b_InterruptEnable = (unsigned char) data[5];
 i_ReturnValue = insn->n;;
 devpriv->tsk_Current = current;




 if (b_ModulNbr < 4) {




  if ((devpriv->s_BoardInfos.
    dw_MolduleConfiguration[b_ModulNbr] &
    0xFFFF0000UL) == APCI1710_TOR_COUNTER) {




   if (b_TorCounter <= 1) {
    switch (b_Action)
    {
    case 128:




     dw_Status =
      inl(devpriv->s_BoardInfos.
      ui_Address + 8 +
      (16 * b_TorCounter) +
      (64 * b_ModulNbr));

     if (dw_Status & 0x10) {




      if (b_InputMode == 0 ||
       b_InputMode == 1 ||
       b_InputMode ==
       APCI1710_TOR_SIMPLE_MODE
       || b_InputMode ==
       APCI1710_TOR_DOUBLE_MODE
       || b_InputMode ==
       APCI1710_TOR_QUADRUPLE_MODE)
      {




       if (b_ExternGate == 0
        || b_ExternGate
        == 1
        || b_InputMode >
        1) {




        if ((b_CycleMode == APCI1710_SINGLE) || (b_CycleMode == APCI1710_CONTINUOUS)) {




         if ((b_InterruptEnable == 128) || (b_InterruptEnable == 129)) {





          devpriv->
           s_ModuleInfo
           [b_ModulNbr].
           s_TorCounterModuleInfo.
           s_TorCounterInfo
           [b_TorCounter].
           b_InterruptEnable
           =
           b_InterruptEnable;





          dw_ConfigReg
           =
           inl
           (devpriv->
           s_BoardInfos.
           ui_Address
           +
           4
           +
           (16 * b_TorCounter) + (64 * b_ModulNbr));

          dw_ConfigReg
           =
           (dw_ConfigReg
           >>
           4)
           &
           0x30;





          if (b_InputMode > 1) {




           b_ExternGate
            =
            0;





           dw_ConfigReg
            =
            dw_ConfigReg
            |
            0x40;





           if (b_InputMode == APCI1710_TOR_SIMPLE_MODE) {




            dw_ConfigReg
             =
             dw_ConfigReg
             |
             0x780;

           }





           if (b_InputMode == APCI1710_TOR_DOUBLE_MODE) {




            dw_ConfigReg
             =
             dw_ConfigReg
             |
             0x180;

           }

           b_InputMode
            =
            0;
          }





          dw_ConfigReg
           =
           dw_ConfigReg
           |
           b_CycleMode
           |
           (b_InterruptEnable
           *
           2)
           |
           (b_InputMode
           *
           4)
           |
           (b_ExternGate
           *
           8);





          dw_DummyRead
           =
           inl
           (devpriv->
           s_BoardInfos.
           ui_Address
           +
           0
           +
           (16 * b_TorCounter) + (64 * b_ModulNbr));





          dw_DummyRead
           =
           inl
           (devpriv->
           s_BoardInfos.
           ui_Address
           +
           12
           +
           (16 * b_TorCounter) + (64 * b_ModulNbr));





          outl(dw_ConfigReg, devpriv->s_BoardInfos.ui_Address + 4 + (16 * b_TorCounter) + (64 * b_ModulNbr));





          outl(1, devpriv->s_BoardInfos.ui_Address + 8 + (16 * b_TorCounter) + (64 * b_ModulNbr));

         }
         else {




          DPRINTK("Interrupt parameter is wrong\n");
          i_ReturnValue
           =
           -9;
         }
        }
        else {




         DPRINTK("Tor counter acquisition mode cycle is wrong\n");
         i_ReturnValue
          =
          -8;
        }
       }
       else {




        DPRINTK("Extern gate input mode is wrong\n");
        i_ReturnValue =
         -7;
       }
      }
      else {




       DPRINTK("Tor input signal selection is wrong\n");
       i_ReturnValue = -6;
      }
     } else {




      DPRINTK("Tor counter not initialised\n");
      i_ReturnValue = -5;
     }
     break;

    case 129:




     dw_Status = inl(devpriv->s_BoardInfos.
      ui_Address + 8 +
      (16 * b_TorCounter) +
      (64 * b_ModulNbr));





     if (dw_Status & 0x10) {




      if (dw_Status & 0x1) {



       devpriv->
        s_ModuleInfo
        [b_ModulNbr].
        s_TorCounterModuleInfo.
        s_TorCounterInfo
        [b_TorCounter].
        b_InterruptEnable
        =
        129;





       outl(0, devpriv->
        s_BoardInfos.
        ui_Address + 8 +
        (16 * b_TorCounter) + (64 * b_ModulNbr));
      }
      else {




       DPRINTK("Tor counter not enabled \n");
       i_ReturnValue = -6;
      }
     }
     else {




      DPRINTK("Tor counter not initialised\n");
      i_ReturnValue = -5;
     }

    }
   }
   else {




    DPRINTK("Tor counter selection is wrong\n");
    i_ReturnValue = -4;
   }
  } else {




   DPRINTK("The module is not a tor counter module \n");
   i_ReturnValue = -3;
  }
 } else {




  DPRINTK("Module number error \n");
  i_ReturnValue = -2;
 }

 return i_ReturnValue;
}
