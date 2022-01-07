
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int moduleid_t ;


 unsigned char L1_BRICKTYPE_C ;

 unsigned char L1_BRICKTYPE_I ;



 unsigned char L1_BRICKTYPE_P ;




 int MODULE_FORMAT_BRIEF ;
 int MODULE_FORMAT_LCD ;
 int MODULE_FORMAT_LONG ;
 int MODULE_GET_BPOS (int ) ;
 unsigned char MODULE_GET_BTCHAR (int ) ;
 int MODULE_GET_RACK (int ) ;
 void* RACK_GET_CLASS (int) ;
 void* RACK_GET_GROUP (int) ;
 void* RACK_GET_NUM (int) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void
format_module_id(char *buffer, moduleid_t m, int fmt)
{
 int rack, position;
 unsigned char brickchar;

 rack = MODULE_GET_RACK(m);
 brickchar = MODULE_GET_BTCHAR(m);




 switch (brickchar)
 {
 case 135:
 case 132:
  brickchar = L1_BRICKTYPE_C;
  break;

 case 129:
 case 130:
 case 131:
 case 128:


  brickchar = L1_BRICKTYPE_P;
  break;

 case 133:
 case 134:

  brickchar = L1_BRICKTYPE_I;
  break;
 }

 position = MODULE_GET_BPOS(m);

 if ((fmt == MODULE_FORMAT_BRIEF) || (fmt == MODULE_FORMAT_LCD)) {



  *buffer++ = '0' + RACK_GET_CLASS(rack);
  *buffer++ = '0' + RACK_GET_GROUP(rack);
  *buffer++ = '0' + RACK_GET_NUM(rack);


  *buffer++ = brickchar;
 }
 else if (fmt == MODULE_FORMAT_LONG) {


  strcpy(buffer, "rack" "/"); buffer += strlen(buffer);

  *buffer++ = '0' + RACK_GET_CLASS(rack);
  *buffer++ = '0' + RACK_GET_GROUP(rack);
  *buffer++ = '0' + RACK_GET_NUM(rack);

  strcpy(buffer, "/" "bay" "/"); buffer += strlen(buffer);
 }


 if (position < 10)
  *buffer++ = '0';
 sprintf(buffer, "%d", position);
}
