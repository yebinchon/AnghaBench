
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int status; } ;


 int CMD_COMPLETE ;
 int POLL_LOOPS ;
 int acpi_read (int*,int *) ;
 int acpi_write (int,int *) ;
 int doorbell ;
 int doorbell_preserve ;
 int doorbell_write ;
 int ioread16 (int *) ;
 TYPE_1__* pcch_hdr ;

__attribute__((used)) static inline void pcc_cmd(void)
{
 u64 doorbell_value;
 int i;

 acpi_read(&doorbell_value, &doorbell);
 acpi_write((doorbell_value & doorbell_preserve) | doorbell_write,
     &doorbell);

 for (i = 0; i < POLL_LOOPS; i++) {
  if (ioread16(&pcch_hdr->status) & CMD_COMPLETE)
   break;
 }
}
