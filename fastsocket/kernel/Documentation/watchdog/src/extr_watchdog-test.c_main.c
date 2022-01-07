
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 int WDIOC_SETOPTIONS ;
 int WDIOS_DISABLECARD ;
 int WDIOS_ENABLECARD ;
 int exit (int) ;
 int fd ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int ioctl (int,int ,int ) ;
 int keep_alive () ;
 int open (char*,int ) ;
 int sleep (int) ;
 int stderr ;
 int strncasecmp (char*,char*,int) ;

int main(int argc, char *argv[])
{
    fd = open("/dev/watchdog", O_WRONLY);

    if (fd == -1) {
 fprintf(stderr, "Watchdog device not enabled.\n");
 fflush(stderr);
 exit(-1);
    }

    if (argc > 1) {
 if (!strncasecmp(argv[1], "-d", 2)) {
     ioctl(fd, WDIOC_SETOPTIONS, WDIOS_DISABLECARD);
     fprintf(stderr, "Watchdog card disabled.\n");
     fflush(stderr);
     exit(0);
 } else if (!strncasecmp(argv[1], "-e", 2)) {
     ioctl(fd, WDIOC_SETOPTIONS, WDIOS_ENABLECARD);
     fprintf(stderr, "Watchdog card enabled.\n");
     fflush(stderr);
     exit(0);
 } else {
     fprintf(stderr, "-d to disable, -e to enable.\n");
     fprintf(stderr, "run by itself to tick the card.\n");
     fflush(stderr);
     exit(0);
 }
    } else {
 fprintf(stderr, "Watchdog Ticking Away!\n");
 fflush(stderr);
    }

    while(1) {
 keep_alive();
 sleep(1);
    }
}
