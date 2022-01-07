
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* R_SERIAL0_STATUS ;
 int * R_SERIAL0_TR_DATA ;
 int* R_SERIAL1_STATUS ;
 int * R_SERIAL1_TR_DATA ;
 int* R_SERIAL2_STATUS ;
 int * R_SERIAL2_TR_DATA ;
 int* R_SERIAL3_STATUS ;
 int * R_SERIAL3_TR_DATA ;
 int regi_ser0 ;
 int regi_ser1 ;
 int regi_ser2 ;
 int regi_ser3 ;
 int serout (char const*,int ) ;

__attribute__((used)) static void puts(const char *s)
{

 while (*s) {
  *s++;
 }


}
