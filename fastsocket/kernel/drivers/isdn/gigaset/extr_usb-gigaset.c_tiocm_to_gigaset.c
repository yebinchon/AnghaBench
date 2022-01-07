
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;

__attribute__((used)) static inline unsigned tiocm_to_gigaset(unsigned state)
{
 return ((state & TIOCM_DTR) ? 1 : 0) | ((state & TIOCM_RTS) ? 2 : 0);
}
