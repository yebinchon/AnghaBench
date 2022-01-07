
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isdnhdlc_vars {int dstpos; int crc; } ;


 int HDLC_CRC_ERROR ;
 int HDLC_FRAMING_ERROR ;

__attribute__((used)) static int
check_frame(struct isdnhdlc_vars *hdlc)
{
 int status;

 if (hdlc->dstpos < 2)
  status = -HDLC_FRAMING_ERROR;
 else if (hdlc->crc != 0xf0b8)
  status = -HDLC_CRC_ERROR;
 else {

  hdlc->dstpos -= 2;

  status = hdlc->dstpos;
 }
 return status;
}
