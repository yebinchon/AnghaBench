
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_error_log {scalar_t__ extended_log_length; } ;


 int rtas_error_log_max ;
 int rtas_get_error_log_max () ;

__attribute__((used)) static int log_rtas_len(char * buf)
{
 int len;
 struct rtas_error_log *err;


 len = 8;
 err = (struct rtas_error_log *)buf;
 if (err->extended_log_length) {


  len += err->extended_log_length;
 }

 if (rtas_error_log_max == 0)
  rtas_error_log_max = rtas_get_error_log_max();

 if (len > rtas_error_log_max)
  len = rtas_error_log_max;

 return len;
}
