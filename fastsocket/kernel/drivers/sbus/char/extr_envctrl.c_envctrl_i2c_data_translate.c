
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int envctrl_i2c_data_translate(unsigned char data, int translate_type,
          int scale, char *tbl, char *bufdata)
{
 int len = 0;

 switch (translate_type) {
 case 129:

  len = 1;
  bufdata[0] = data;
  break;

 case 130:

  len = 1;
  bufdata[0] = tbl[data];
  break;

 case 128:

  sprintf(bufdata,"%d ", (tbl[data] * 10) / (scale));
  len = strlen(bufdata);
  bufdata[len - 1] = bufdata[len - 2];
  bufdata[len - 2] = '.';
  break;

 default:
  break;
 };

 return len;
}
