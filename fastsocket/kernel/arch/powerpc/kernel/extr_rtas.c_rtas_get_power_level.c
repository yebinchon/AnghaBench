
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int RTAS_BUSY ;
 int RTAS_UNKNOWN_SERVICE ;
 int rtas_call (int,int,int,int*,int) ;
 int rtas_error_rc (int) ;
 int rtas_token (char*) ;
 int udelay (int) ;

int rtas_get_power_level(int powerdomain, int *level)
{
 int token = rtas_token("get-power-level");
 int rc;

 if (token == RTAS_UNKNOWN_SERVICE)
  return -ENOENT;

 while ((rc = rtas_call(token, 1, 2, level, powerdomain)) == RTAS_BUSY)
  udelay(1);

 if (rc < 0)
  return rtas_error_rc(rc);
 return rc;
}
