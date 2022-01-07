
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DID_ABORT ;
 unsigned int DID_BAD_INTR ;
 unsigned int DID_BAD_TARGET ;
 unsigned int DID_ERROR ;
 unsigned int DID_OK ;
 unsigned int DID_RESET ;
 unsigned int DID_TIME_OUT ;
 int dprintk (char*,unsigned int,int,unsigned int) ;

__attribute__((used)) static int make_code(unsigned hosterr, unsigned scsierr)
{




 switch ((hosterr >> 8) & 0xff) {
 case 0:
  hosterr = DID_ERROR;
  break;
 case 1:
  hosterr = DID_OK;
  break;
 case 2:
  hosterr = DID_OK;
  break;
 case 4:
  hosterr = DID_TIME_OUT;
  break;
 case 5:
  hosterr = DID_RESET;
  break;
 case 6:
  hosterr = DID_BAD_TARGET;
  break;
 case 80:
 case 81:
  hosterr = DID_BAD_INTR;
  break;
 case 82:
  hosterr = DID_ABORT;
  break;
 case 83:
 case 84:
  hosterr = DID_RESET;
  break;
 default:
  hosterr = DID_ERROR;
 }




 return (scsierr | (hosterr << 16));
}
