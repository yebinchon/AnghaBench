
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct worker_data {int dummy; } ;
struct TYPE_4__ {int process; scalar_t__ cpu_id; scalar_t__ trancnt; } ;


 int MAP_ANON ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int exit (int ) ;
 int exit_cleanup () ;
 int fork () ;
 int getpid () ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* mmap (int *,int,int,int,int,int ) ;
 int num_workers ;
 int perror (char*) ;
 int process_clients (void*) ;
 scalar_t__ start_cpu ;
 TYPE_1__* wdata ;

void init_processes(void)
{
 int i, pid;

 wdata = mmap(((void*)0), num_workers * sizeof(struct worker_data),
       PROT_READ|PROT_WRITE,
       MAP_ANON|MAP_SHARED,
       -1, 0);

 memset(wdata, 0, num_workers * sizeof(struct worker_data));

 if (wdata == ((void*)0)) {
  perror("Unable to mmap shared global wdata");
  exit_cleanup();
 }

 for(i = 0; i < num_workers; i++) {
  wdata[i].trancnt = 0;
  wdata[i].cpu_id = i + start_cpu;

  if ( (pid = fork()) < 0) {
   perror("Unable to fork child process");
   exit_cleanup();
  } else if( pid == 0) {
   wdata[i].process = getpid();
   process_clients((void *)&(wdata[i]));
   exit(0);
  }
 }
}
