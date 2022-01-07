
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mem2hex (char*,unsigned char*,int) ;
 int putpacket (char*) ;
 char* remcomOutBuffer ;

void
putDebugString (const unsigned char *str, int length)
{
        remcomOutBuffer[0] = 'O';
        mem2hex(&remcomOutBuffer[1], (unsigned char *)str, length);
        putpacket(remcomOutBuffer);
}
