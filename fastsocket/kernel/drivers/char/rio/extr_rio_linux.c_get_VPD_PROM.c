
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpd_prom {int dummy; } ;
struct Host {scalar_t__ Caddr; } ;


 int RIO_DEBUG_PROBE ;
 scalar_t__ RIO_VPD_ROM ;
 int func_enter () ;
 int func_exit () ;
 int my_hd (char*,int) ;
 int readb (scalar_t__) ;
 int rio_debug ;
 int rio_dprintk (int,char*,scalar_t__) ;

__attribute__((used)) static struct vpd_prom *get_VPD_PROM(struct Host *hp)
{
 static struct vpd_prom vpdp;
 char *p;
 int i;

 func_enter();
 rio_dprintk(RIO_DEBUG_PROBE, "Going to verify vpd prom at %p.\n", hp->Caddr + RIO_VPD_ROM);

 p = (char *) &vpdp;
 for (i = 0; i < sizeof(struct vpd_prom); i++)
  *p++ = readb(hp->Caddr + RIO_VPD_ROM + i * 2);




 *p++ = 0;

 if (rio_debug & RIO_DEBUG_PROBE)
  my_hd((char *) &vpdp, 0x20);

 func_exit();

 return &vpdp;
}
