
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_data {int io_db; } ;
struct pcmcia_socket {struct socket_data* resource_data; } ;



 int EBUSY ;
 int EINVAL ;
 unsigned long IO_SPACE_LIMIT ;

 int add_interval (int *,unsigned long,unsigned long) ;
 int do_io_probe (struct pcmcia_socket*,unsigned long,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int probe_io ;
 int rsrc_mutex ;
 int sub_interval (int *,unsigned long,unsigned long) ;

__attribute__((used)) static int adjust_io(struct pcmcia_socket *s, unsigned int action, unsigned long start, unsigned long end)
{
 struct socket_data *data = s->resource_data;
 unsigned long size = end - start + 1;
 int ret = 0;

 if (end < start)
  return -EINVAL;

 if (end > IO_SPACE_LIMIT)
  return -EINVAL;

 mutex_lock(&rsrc_mutex);
 switch (action) {
 case 129:
  if (add_interval(&data->io_db, start, size) != 0) {
   ret = -EBUSY;
   break;
  }




  break;
 case 128:
  sub_interval(&data->io_db, start, size);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 mutex_unlock(&rsrc_mutex);

 return ret;
}
