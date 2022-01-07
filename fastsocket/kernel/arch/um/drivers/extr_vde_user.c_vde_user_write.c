
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VDECONN ;


 int vde_send (int *,void*,int,int ) ;

int vde_user_write(void *conn, void *buf, int len)
{
 VDECONN *vconn = conn;

 if (vconn == ((void*)0))
  return 0;

 return vde_send(vconn, buf, len, 0);
}
