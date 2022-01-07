
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maybebadio (unsigned long) ;

__attribute__((used)) static inline unsigned int port2adr(unsigned int port)
{
        maybebadio((unsigned long)port);
        return port;
}
