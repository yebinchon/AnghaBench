
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct rlimit {void* rlim_max; void* rlim_cur; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {int listen_fd; int param_port; struct in_addr listenip; } ;


 void* MAX_CONNS_PER_WORKER ;
 int RLIMIT_CORE ;
 int RLIMIT_NOFILE ;
 void* RLIM_INFINITY ;
 int exit_cleanup () ;
 int getrlimit (int ,struct rlimit*) ;
 int init_single_server (struct in_addr,int ) ;
 TYPE_1__* la ;
 int la_num ;
 int perror (char*) ;
 int print_d (char*,void*,void*) ;
 int setrlimit (int ,struct rlimit*) ;

void init_server(void)
{
 int ret, i;
 struct rlimit limits;

 for (i = 0; i < la_num; i++){
  struct in_addr ip;
  uint16_t port;

  ip = la[i].listenip;
  port = la[i].param_port;

  la[i].listen_fd = init_single_server(ip, port);
 }

 limits.rlim_cur = RLIM_INFINITY;
 limits.rlim_max = RLIM_INFINITY;

 ret = setrlimit(RLIMIT_CORE, &limits);
 if (ret < 0) {
  perror("Set core limit failed");
  exit_cleanup();
 }

 getrlimit(RLIMIT_CORE, &limits);
 print_d("Core limit %ld %ld\n", limits.rlim_cur, limits.rlim_max);

 limits.rlim_cur = MAX_CONNS_PER_WORKER;
 limits.rlim_max = MAX_CONNS_PER_WORKER;

 ret = setrlimit(RLIMIT_NOFILE, &limits);
 if (ret < 0) {
  perror("Set open file limit failed");
  exit_cleanup();
 }

 getrlimit(RLIMIT_NOFILE, &limits);
 print_d("Open file limit %ld %ld\n", limits.rlim_cur, limits.rlim_max);
}
