
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACR ;
 size_t B ;
 size_t SR ;
 int SR_CTRL ;
 int TREQ ;
 int* via1 ;
 int * via2 ;

__attribute__((used)) static void
send_byte(int x)
{
 via1[ACR] |= SR_CTRL;
 via1[SR] = x;
 via2[B] &= ~TREQ;
}
