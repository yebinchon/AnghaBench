
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {scalar_t__ tty; } ;


 int tty_wakeup (scalar_t__) ;

__attribute__((used)) static void raw3215_wakeup(unsigned long data)
{
 struct raw3215_info *raw = (struct raw3215_info *) data;
 if (raw->tty)
  tty_wakeup(raw->tty);
}
