
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int count ;


 scalar_t__ EINTR ;
 int EINVAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int O_RDONLY ;
 int SCHED_FIFO ;
 int SIGALRM ;
 int alarm (int) ;
 int close (int) ;
 int daemon (int ,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int ignore_me ;
 scalar_t__ lid_open () ;
 int mlockall (int) ;
 scalar_t__ on_ac () ;
 int open (char*,int ) ;
 int perror (char*) ;
 int protect (int) ;
 int read (int,unsigned char*,int) ;
 int sched_get_priority_max (int ) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;
 int set_led (int) ;
 int set_unload_heads_path (char*) ;
 int signal (int ,int ) ;
 int stderr ;
 int valid_disk () ;

int main(int argc, char **argv)
{
 int fd, ret;
 struct sched_param param;

 if (argc == 1)
  ret = set_unload_heads_path("/dev/sda");
 else if (argc == 2)
  ret = set_unload_heads_path(argv[1]);
 else
  ret = -EINVAL;

 if (ret || !valid_disk()) {
  fprintf(stderr, "usage: %s <device> (default: /dev/sda)\n",
    argv[0]);
  exit(1);
 }

 fd = open("/dev/freefall", O_RDONLY);
 if (fd < 0) {
  perror("/dev/freefall");
  return EXIT_FAILURE;
 }

 daemon(0, 0);
 param.sched_priority = sched_get_priority_max(SCHED_FIFO);
 sched_setscheduler(0, SCHED_FIFO, &param);
 mlockall(MCL_CURRENT|MCL_FUTURE);

 signal(SIGALRM, ignore_me);

 for (;;) {
  unsigned char count;

  ret = read(fd, &count, sizeof(count));
  alarm(0);
  if ((ret == -1) && (errno == EINTR)) {

   continue;
  }

  if (ret != sizeof(count)) {
   perror("read");
   break;
  }

  protect(21);
  set_led(1);
  if (1 || on_ac() || lid_open())
   alarm(2);
  else
   alarm(20);
 }

 close(fd);
 return EXIT_SUCCESS;
}
