
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zs_port {int dummy; } ;


 int CTS ;
 int DCD ;
 int R0 ;
 int SYNC_HUNT ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int TIOCM_RNG ;
 int read_zsreg (struct zs_port*,int ) ;

__attribute__((used)) static unsigned int zs_raw_get_ab_mctrl(struct zs_port *zport_a,
     struct zs_port *zport_b)
{
 u8 status_a, status_b;
 unsigned int mctrl;

 status_a = read_zsreg(zport_a, R0);
 status_b = read_zsreg(zport_b, R0);

 mctrl = ((status_b & CTS) ? TIOCM_CTS : 0) |
  ((status_b & DCD) ? TIOCM_CAR : 0) |
  ((status_a & DCD) ? TIOCM_RNG : 0) |
  ((status_a & SYNC_HUNT) ? TIOCM_DSR : 0);

 return mctrl;
}
