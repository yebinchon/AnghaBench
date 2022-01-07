
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;


 int GFP_KERNEL ;
 int am_readbuffer (struct net_device*,int ,unsigned char*,int) ;
 int am_writebuffer (struct net_device*,int ,unsigned char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memset (unsigned char*,unsigned int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static int
am79c961_ramtest(struct net_device *dev, unsigned int val)
{
 unsigned char *buffer = kmalloc (65536, GFP_KERNEL);
 int i, error = 0, errorcount = 0;

 if (!buffer)
  return 0;
 memset (buffer, val, 65536);
 am_writebuffer(dev, 0, buffer, 65536);
 memset (buffer, val ^ 255, 65536);
 am_readbuffer(dev, 0, buffer, 65536);
 for (i = 0; i < 65536; i++) {
  if (buffer[i] != val && !error) {
   printk ("%s: buffer error (%02X %02X) %05X - ", dev->name, val, buffer[i], i);
   error = 1;
   errorcount ++;
  } else if (error && buffer[i] == val) {
   printk ("%05X\n", i);
   error = 0;
  }
 }
 if (error)
  printk ("10000\n");
 kfree (buffer);
 return errorcount;
}
