
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int kill (int ,int ) ;

__attribute__((used)) static void kill_launcher(int signal)
{
 kill(0, SIGTERM);
}
