
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;


 int byteout (unsigned int,int ) ;

__attribute__((used)) static inline void
writereg_ipac(unsigned int adr, u_short off, u_char data)
{
 byteout(adr, off);
 byteout(adr + 4, data);
}
