
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscom_port {int dummy; } ;


 int RC_PORT (struct riscom_port const*) ;
 int rc_port ;

__attribute__((used)) static inline int port_No(struct riscom_port const *port)
{
 return RC_PORT(port - rc_port);
}
