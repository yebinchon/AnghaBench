
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mconsole_socket_name ;
 int unlink (int ) ;

int mconsole_unlink_socket(void)
{
 unlink(mconsole_socket_name);
 return 0;
}
