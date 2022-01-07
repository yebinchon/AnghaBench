
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 scalar_t__ g_http_check_interval ;
 int http_check_tid ;
 int pthread_kill (int ,int ) ;

int tracker_http_check_stop()
{
 if (g_http_check_interval <= 0)
 {
  return 0;
 }

 return pthread_kill(http_check_tid, SIGINT);
}
