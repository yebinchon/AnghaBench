
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {int scan_begin_src; int convert_src; int * chanlist; } ;


 int AREF_COMMON ;
 int AREF_DIFF ;
 int BMDE ;
 int CMEN ;
 int CR_AREF (int ) ;
 int CR_RANGE (int ) ;
 int IPCLK ;
 int SD ;



 int UB ;
 int UNIPOLAR ;
 int UQEN ;
 int XPCLK ;

__attribute__((used)) static int control_c_bits(struct comedi_cmd cmd)
{
 int control_c;
 int aref;




 aref = CR_AREF(cmd.chanlist[0]);
 control_c = UQEN;
 if (aref != AREF_DIFF)
  control_c |= SD;
 if (aref == AREF_COMMON)
  control_c |= CMEN;

 if (CR_RANGE(cmd.chanlist[0]) & UNIPOLAR)
  control_c |= UB;
 switch (cmd.scan_begin_src) {
 case 129:
  switch (cmd.convert_src) {
  case 128:

   control_c |= IPCLK;
   break;
  case 130:

   control_c |= XPCLK;
   break;
  default:
   break;
  }
  break;
 case 128:

  control_c |= BMDE | IPCLK;
  break;
 case 130:

  control_c |= BMDE | XPCLK;
  break;
 default:
  break;
 }

 return control_c;
}
