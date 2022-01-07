
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s921_isdb_t {int dummy; } ;


 int EINVAL ;




 int printk (char*) ;
 int s921_isdb_get_status (struct s921_isdb_t*,void*) ;
 int s921_isdb_init (struct s921_isdb_t*) ;
 int s921_isdb_set_parameters (struct s921_isdb_t*,void*) ;
 int s921_isdb_tune (struct s921_isdb_t*,void*) ;

int s921_isdb_cmd(struct s921_isdb_t *dev, u32 cmd, void *data) {
 switch(cmd) {
 case 130:
  s921_isdb_init(dev);
  break;
 case 129:
  s921_isdb_set_parameters(dev, data);
  break;
 case 128:
  s921_isdb_tune(dev, data);
  break;
 case 131:
  s921_isdb_get_status(dev, data);
  break;
 default:
  printk("unhandled command\n");
  return -EINVAL;
 }
 return 0;
}
