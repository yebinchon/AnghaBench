
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb_dec {int model; char* model_name; char* firmware_name; } ;
typedef enum ttusb_dec_model { ____Placeholder_ttusb_dec_model } ttusb_dec_model ;






__attribute__((used)) static void ttusb_dec_set_model(struct ttusb_dec *dec,
    enum ttusb_dec_model model)
{
 dec->model = model;

 switch (model) {
 case 130:
  dec->model_name = "DEC2000-t";
  dec->firmware_name = "dvb-ttusb-dec-2000t.fw";
  break;

 case 129:
  dec->model_name = "DEC2540-t";
  dec->firmware_name = "dvb-ttusb-dec-2540t.fw";
  break;

 case 128:
  dec->model_name = "DEC3000-s";
  dec->firmware_name = "dvb-ttusb-dec-3000s.fw";
  break;
 }
}
