
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int byteout (unsigned int,int ) ;

__attribute__((used)) static inline void
writereg(unsigned int ale, unsigned int adr, u_char off, u_char data)
{
 byteout(ale, off);
 byteout(adr, data);
}
