
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ATAPI_MISC ;
 int ATAPI_PASS_THRU ;
 int ATAPI_READ ;
 int ATAPI_READ_CD ;
 int ATAPI_WRITE ;
 int atapi_passthru16 ;

int atapi_cmd_type(u8 opcode)
{
 switch (opcode) {
 case 134:
 case 133:
  return ATAPI_READ;

 case 130:
 case 129:
 case 128:
  return ATAPI_WRITE;

 case 132:
 case 131:
  return ATAPI_READ_CD;

 case 135:
 case 136:
  if (atapi_passthru16)
   return ATAPI_PASS_THRU;

 default:
  return ATAPI_MISC;
 }
}
