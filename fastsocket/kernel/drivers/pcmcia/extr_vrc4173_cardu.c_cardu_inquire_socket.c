
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cap; } ;
typedef TYPE_1__ vrc4173_socket_t ;
typedef int socket_cap_t ;


 TYPE_1__* cardu_sockets ;

__attribute__((used)) static int cardu_inquire_socket(unsigned int sock, socket_cap_t *cap)
{
 vrc4173_socket_t *socket = &cardu_sockets[sock];

 *cap = socket->cap;

 return 0;
}
