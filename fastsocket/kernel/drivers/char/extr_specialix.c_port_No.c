
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct specialix_port {int dummy; } ;


 int SX_PORT (struct specialix_port const*) ;
 int sx_port ;

__attribute__((used)) static inline int port_No(struct specialix_port const *port)
{
 return SX_PORT(port - sx_port);
}
