
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 unsigned int ASR_DBR ;
 unsigned int ASR_INT ;
 int SBIC_ASR ;
 int SBIC_DATA ;
 unsigned int sbic_arm_read (int *,int ) ;
 int sbic_arm_write (int *,int ,char) ;
 int udelay (int) ;

__attribute__((used)) static int
acornscsi_write_pio(AS_Host *host, char *bytes, int *ptr, int len, unsigned int max_timeout)
{
 unsigned int asr, timeout = max_timeout;
 int my_ptr = *ptr;

 while (my_ptr < len) {
  asr = sbic_arm_read(host, SBIC_ASR);

  if (asr & ASR_DBR) {
   timeout = max_timeout;

   sbic_arm_write(host, SBIC_DATA, bytes[my_ptr++]);
  } else if (asr & ASR_INT)
   break;
  else if (--timeout == 0)
   break;
  udelay(1);
 }

 *ptr = my_ptr;

 return (timeout == 0) ? -1 : 0;
}
