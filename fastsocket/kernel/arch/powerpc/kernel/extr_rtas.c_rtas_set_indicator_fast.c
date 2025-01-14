
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int RTAS_UNKNOWN_SERVICE ;
 int WARN_ON (int) ;
 int rtas_call (int,int,int,int *,int,int,int) ;
 int rtas_error_rc (int) ;
 int rtas_token (char*) ;

int rtas_set_indicator_fast(int indicator, int index, int new_value)
{
 int rc;
 int token = rtas_token("set-indicator");

 if (token == RTAS_UNKNOWN_SERVICE)
  return -ENOENT;

 rc = rtas_call(token, 3, 1, ((void*)0), indicator, index, new_value);

 WARN_ON(rc == -2 || (rc >= 9900 && rc <= 9905));

 if (rc < 0)
  return rtas_error_rc(rc);

 return rc;
}
