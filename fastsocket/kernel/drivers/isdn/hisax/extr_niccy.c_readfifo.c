
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int byteout (unsigned int,int ) ;
 int insb (unsigned int,int *,int) ;

__attribute__((used)) static inline void readfifo(unsigned int ale, unsigned int adr, u_char off,
  u_char *data, int size)
{
 byteout(ale, off);
 insb(adr, data, size);
}
