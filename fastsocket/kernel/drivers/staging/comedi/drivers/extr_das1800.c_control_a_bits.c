
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_cmd {scalar_t__ stop_src; int start_src; } ;


 int ATEN ;
 int CGEN ;
 int CGSL ;
 int FFEN ;
 int TGEN ;



__attribute__((used)) static int control_a_bits(struct comedi_cmd cmd)
{
 int control_a;

 control_a = FFEN;
 if (cmd.stop_src == 129) {
  control_a |= ATEN;
 }
 switch (cmd.start_src) {
 case 129:
  control_a |= TGEN | CGSL;
  break;
 case 128:
  control_a |= CGEN;
  break;
 default:
  break;
 }

 return control_a;
}
