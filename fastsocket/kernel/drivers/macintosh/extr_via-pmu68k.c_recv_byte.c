
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ACR ;
 size_t B ;
 size_t SR ;
 char SR_EXT ;
 char SR_OUT ;
 int TREQ ;
 char* via1 ;
 int * via2 ;

__attribute__((used)) static void
recv_byte(void)
{
 char c;

 via1[ACR] = (via1[ACR] | SR_EXT) & ~SR_OUT;
 c = via1[SR];
 via2[B] &= ~TREQ;
}
