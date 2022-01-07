
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct stliport* driver_data; } ;
struct stliport {int state; } ;


 int ST_RXSTOP ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void stli_throttle(struct tty_struct *tty)
{
 struct stliport *portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 set_bit(ST_RXSTOP, &portp->state);
}
