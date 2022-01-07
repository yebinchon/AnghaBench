
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int APIC_ICR ;
 int APIC_ICR_BUSY ;
 int apic_read (int ) ;
 int udelay (int) ;

u32 native_safe_apic_wait_icr_idle(void)
{
 u32 send_status;
 int timeout;

 timeout = 0;
 do {
  send_status = apic_read(APIC_ICR) & APIC_ICR_BUSY;
  if (!send_status)
   break;
  udelay(100);
 } while (timeout++ < 1000);

 return send_status;
}
