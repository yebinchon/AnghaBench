
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint16_t ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 int AF_INET ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (int,struct sockaddr*,int) ;
 int exit_cleanup () ;
 int fcntl (int,int ,int) ;
 int htons (int ) ;
 scalar_t__ listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int perror (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

int init_single_server(struct in_addr ip, uint16_t port)
{
 struct sockaddr_in addr;
 socklen_t addrlen = sizeof(addr);
 int serverfd, flags, value;

 if((serverfd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
  perror("Unable to open socket");
  exit_cleanup();
 }

 flags = fcntl(serverfd, F_GETFL, 0);
 flags |= O_NONBLOCK;
 fcntl(serverfd, F_SETFL, flags);

 value = 1;
 if(setsockopt(serverfd, SOL_SOCKET, SO_REUSEADDR, &value, sizeof(value)) ==
    -1) {
  perror("Unable to set socket reuseaddr option");
  exit_cleanup();
 }

 memset(&addr, 0, addrlen);
 addr.sin_family = AF_INET;
 addr.sin_port = htons(port);
 addr.sin_addr = ip;

 if(bind(serverfd, (struct sockaddr *)&addr, addrlen) == -1) {
  perror("Unable to bind socket");
  exit_cleanup();
 }

 if(listen(serverfd, 8192) != 0) {
  perror("Cannot listen for client connections");
  exit_cleanup();
 }

 return serverfd;
}
