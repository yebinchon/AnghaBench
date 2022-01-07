
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned char parport_atari_read_control (struct parport*) ;
 int parport_atari_write_control (struct parport*,unsigned char) ;

__attribute__((used)) static unsigned char
parport_atari_frob_control(struct parport *p, unsigned char mask,
      unsigned char val)
{
 unsigned char old = parport_atari_read_control(p);
 parport_atari_write_control(p, (old & ~mask) ^ val);
 return old;
}
