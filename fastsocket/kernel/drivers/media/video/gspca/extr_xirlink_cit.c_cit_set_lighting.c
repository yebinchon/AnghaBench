
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; int lighting; } ;
struct gspca_dev {int dummy; } ;
 int cit_Packet_Format1 (struct gspca_dev*,int,int ) ;
 int cit_model1_ntries ;

__attribute__((used)) static void cit_set_lighting(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
 case 130:
 case 129:
 case 128:
 case 133:
  break;
 case 131: {
  int i;
  for (i = 0; i < cit_model1_ntries; i++)
   cit_Packet_Format1(gspca_dev, 0x0027, sd->lighting);
  break;
 }
 }
}
