
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mgsl_struct {int serial_signals; } ;


 int MISCSTATUS_CTS ;
 int MISCSTATUS_DCD ;
 int MISCSTATUS_DSR ;
 int MISCSTATUS_RI ;
 int MISR ;
 int SerialSignal_CTS ;
 int SerialSignal_DCD ;
 int SerialSignal_DSR ;
 int SerialSignal_DTR ;
 int SerialSignal_RI ;
 int SerialSignal_RTS ;
 int usc_InReg (struct mgsl_struct*,int ) ;

__attribute__((used)) static void usc_get_serial_signals( struct mgsl_struct *info )
{
 u16 status;


 info->serial_signals &= SerialSignal_DTR + SerialSignal_RTS;




 status = usc_InReg( info, MISR );



 if ( status & MISCSTATUS_CTS )
  info->serial_signals |= SerialSignal_CTS;

 if ( status & MISCSTATUS_DCD )
  info->serial_signals |= SerialSignal_DCD;

 if ( status & MISCSTATUS_RI )
  info->serial_signals |= SerialSignal_RI;

 if ( status & MISCSTATUS_DSR )
  info->serial_signals |= SerialSignal_DSR;

}
