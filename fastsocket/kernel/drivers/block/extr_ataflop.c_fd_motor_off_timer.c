
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDCREG_STATUS ;
 unsigned char FDC_READ (int ) ;
 scalar_t__ FD_MOTOR_OFF_MAXTRY ;
 int HZ ;
 int MotorOffTrys ;
 scalar_t__ MotorOn ;
 scalar_t__ SelectedDrive ;
 int fd_deselect () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int motor_off_timer ;
 scalar_t__ stdma_islocked () ;

__attribute__((used)) static void fd_motor_off_timer( unsigned long dummy )
{
 unsigned char status;

 if (SelectedDrive < 0)

  return;

 if (stdma_islocked())
  goto retry;

 status = FDC_READ( FDCREG_STATUS );

 if (!(status & 0x80)) {

  MotorOn = 0;
  fd_deselect();
  return;
 }


  retry:





 mod_timer(&motor_off_timer,
    jiffies + (MotorOffTrys++ < FD_MOTOR_OFF_MAXTRY ? HZ/20 : HZ/2));
}
