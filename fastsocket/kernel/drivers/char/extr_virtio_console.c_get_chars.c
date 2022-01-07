
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port {int in_vq; } ;


 int BUG_ON (int) ;
 int EPIPE ;
 int early_put_chars ;
 int fill_readbuf (struct port*,char*,int,int) ;
 struct port* find_port_by_vtermno (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int get_chars(u32 vtermno, char *buf, int count)
{
 struct port *port;


 if (unlikely(early_put_chars))
  return 0;

 port = find_port_by_vtermno(vtermno);
 if (!port)
  return -EPIPE;


 BUG_ON(!port->in_vq);

 return fill_readbuf(port, buf, count, 0);
}
