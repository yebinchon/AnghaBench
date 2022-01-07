
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;


 int N_POSSIBLE ;
 int print_nodes_state (int ,char*) ;

__attribute__((used)) static ssize_t print_nodes_possible(struct sysdev_class *class, char *buf)
{
 return print_nodes_state(N_POSSIBLE, buf);
}
