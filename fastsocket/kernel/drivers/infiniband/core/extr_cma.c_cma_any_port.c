
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int cma_port (struct sockaddr*) ;

__attribute__((used)) static inline int cma_any_port(struct sockaddr *addr)
{
 return !cma_port(addr);
}
