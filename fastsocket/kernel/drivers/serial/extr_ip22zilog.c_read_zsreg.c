
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zilog_channel {int control; } ;


 int ZSDELAY () ;
 unsigned char readb (int *) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static unsigned char read_zsreg(struct zilog_channel *channel,
    unsigned char reg)
{
 unsigned char retval;

 writeb(reg, &channel->control);
 ZSDELAY();
 retval = readb(&channel->control);
 ZSDELAY();

 return retval;
}
