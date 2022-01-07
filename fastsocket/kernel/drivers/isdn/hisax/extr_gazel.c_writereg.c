
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_char ;


 int byteout (scalar_t__,int ) ;

__attribute__((used)) static inline void
writereg(unsigned int adr, u_short off, u_char data)
{
 byteout(adr + off, data);
}
