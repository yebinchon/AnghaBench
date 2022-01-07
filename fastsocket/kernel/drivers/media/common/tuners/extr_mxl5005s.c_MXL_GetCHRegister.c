
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 scalar_t__ MXL_RegRead (struct dvb_frontend*,int,int*) ;

__attribute__((used)) static u16 MXL_GetCHRegister(struct dvb_frontend *fe, u8 *RegNum, u8 *RegVal,
 int *count)
{
 u16 status = 0;
 int i ;






 u8 RegAddr[] = {14, 15, 16, 17, 22, 43, 68, 69, 70, 73, 92, 93, 106,
    107, 108, 109, 110, 111, 112, 136, 138, 149, 77, 166, 167, 168 } ;







 *count = ARRAY_SIZE(RegAddr);

 for (i = 0 ; i < *count; i++) {
  RegNum[i] = RegAddr[i];
  status += MXL_RegRead(fe, RegNum[i], &RegVal[i]);
 }

 return status;
}
