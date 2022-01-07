
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char PARPORT_STATUS_ACK ;
 unsigned char PARPORT_STATUS_BUSY ;
 unsigned char PARPORT_STATUS_ERROR ;
 unsigned char PARPORT_STATUS_PAPEROUT ;
 unsigned char PARPORT_STATUS_SELECT ;

__attribute__((used)) static unsigned char status_mfc3_to_pc(unsigned char status)
{
 unsigned char ret = PARPORT_STATUS_BUSY;

 if (status & 1)
  ret &= ~PARPORT_STATUS_BUSY;
 if (status & 2)
  ret |= PARPORT_STATUS_PAPEROUT;
 if (status & 4)
  ret |= PARPORT_STATUS_SELECT;
 if (status & 8)
  ret |= PARPORT_STATUS_ACK;
 if (status & 16)
  ret |= PARPORT_STATUS_ERROR;

 return ret;
}
