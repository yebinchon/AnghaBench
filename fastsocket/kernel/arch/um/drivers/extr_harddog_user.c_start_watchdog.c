
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dog_data {int stdin; int stdout; int* close_me; } ;
typedef int c ;


 int EIO ;
 int close (int) ;
 int errno ;
 int helper_wait (int) ;
 int os_getpid () ;
 int os_pipe (int*,int,int ) ;
 int pre_exec ;
 int printk (char*,...) ;
 int read (int,char*,int) ;
 int run_helper (int ,struct dog_data*,char**) ;
 int sprintf (char*,char*,int) ;

int start_watchdog(int *in_fd_ret, int *out_fd_ret, char *sock)
{
 struct dog_data data;
 int in_fds[2], out_fds[2], pid, n, err;
 char pid_buf[sizeof("nnnnn\0")], c;
 char *pid_args[] = { "/usr/bin/uml_watchdog", "-pid", pid_buf, ((void*)0) };
 char *mconsole_args[] = { "/usr/bin/uml_watchdog", "-mconsole", ((void*)0),
      ((void*)0) };
 char **args = ((void*)0);

 err = os_pipe(in_fds, 1, 0);
 if (err < 0) {
  printk("harddog_open - os_pipe failed, err = %d\n", -err);
  goto out;
 }

 err = os_pipe(out_fds, 1, 0);
 if (err < 0) {
  printk("harddog_open - os_pipe failed, err = %d\n", -err);
  goto out_close_in;
 }

 data.stdin = out_fds[0];
 data.stdout = in_fds[1];
 data.close_me[0] = out_fds[1];
 data.close_me[1] = in_fds[0];

 if (sock != ((void*)0)) {
  mconsole_args[2] = sock;
  args = mconsole_args;
 }
 else {

  sprintf(pid_buf, "%d", os_getpid());
  args = pid_args;
 }

 pid = run_helper(pre_exec, &data, args);

 close(out_fds[0]);
 close(in_fds[1]);

 if (pid < 0) {
  err = -pid;
  printk("harddog_open - run_helper failed, errno = %d\n", -err);
  goto out_close_out;
 }

 n = read(in_fds[0], &c, sizeof(c));
 if (n == 0) {
  printk("harddog_open - EOF on watchdog pipe\n");
  helper_wait(pid);
  err = -EIO;
  goto out_close_out;
 }
 else if (n < 0) {
  printk("harddog_open - read of watchdog pipe failed, "
         "err = %d\n", errno);
  helper_wait(pid);
  err = n;
  goto out_close_out;
 }
 *in_fd_ret = in_fds[0];
 *out_fd_ret = out_fds[1];
 return 0;

 out_close_in:
 close(in_fds[0]);
 close(in_fds[1]);
 out_close_out:
 close(out_fds[0]);
 close(out_fds[1]);
 out:
 return err;
}
