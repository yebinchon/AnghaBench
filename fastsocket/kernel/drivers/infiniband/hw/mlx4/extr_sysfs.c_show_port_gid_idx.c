
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_attribute {int dummy; } ;
struct mlx4_port {int slave; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_port_gid_idx(struct mlx4_port *p,
     struct port_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", p->slave);
}
