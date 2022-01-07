
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int data_port ;
 int inb (int ) ;
 int io_port ;
 int outb (int,int ) ;

__attribute__((used)) static int pms_i2c_stat(u8 slave)
{
 int counter;
 int i;

 outb(0x28, io_port);

 counter=0;
 while((inb(data_port)&0x01)==0)
  if(counter++==256)
   break;

 while((inb(data_port)&0x01)!=0)
  if(counter++==256)
   break;

 outb(slave, io_port);

 counter=0;
 while((inb(data_port)&0x01)==0)
  if(counter++==256)
   break;

 while((inb(data_port)&0x01)!=0)
  if(counter++==256)
   break;

 for(i=0;i<12;i++)
 {
  char st=inb(data_port);
  if((st&2)!=0)
   return -1;
  if((st&1)==0)
   break;
 }
 outb(0x29, io_port);
 return inb(data_port);
}
