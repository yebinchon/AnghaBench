
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int driver_byte (int) ;
 int host_byte (int) ;
 int printk (char*,int ,int ) ;

void scsi_show_result(int result)
{
 printk("Result: hostbyte=0x%02x driverbyte=0x%02x\n",
        host_byte(result), driver_byte(result));
}
