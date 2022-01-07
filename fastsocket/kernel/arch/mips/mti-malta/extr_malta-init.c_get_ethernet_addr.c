
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_debug ;
 int printk (char*,...) ;
 char* prom_getenv (char*) ;
 int str2eaddr (char*,char*) ;

int get_ethernet_addr(char *ethernet_addr)
{
        char *ethaddr_str;

        ethaddr_str = prom_getenv("ethaddr");
 if (!ethaddr_str) {
         printk("ethaddr not set in boot prom\n");
  return -1;
 }
 str2eaddr(ethernet_addr, ethaddr_str);

 if (init_debug > 1) {
         int i;
  printk("get_ethernet_addr: ");
         for (i=0; i<5; i++)
          printk("%02x:", (unsigned char)*(ethernet_addr+i));
  printk("%02x\n", *(ethernet_addr+i));
 }

 return 0;
}
