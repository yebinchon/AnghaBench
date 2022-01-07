
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int i2o_cfg_evt_get (unsigned long,struct file*) ;
 int i2o_cfg_evt_reg (unsigned long,struct file*) ;
 int i2o_cfg_gethrt (unsigned long) ;
 int i2o_cfg_getiops (unsigned long) ;
 int i2o_cfg_getlct (unsigned long) ;
 int i2o_cfg_parms (unsigned long,int const) ;
 int i2o_cfg_passthru (unsigned long) ;
 int i2o_cfg_swdel (unsigned long) ;
 int i2o_cfg_swdl (unsigned long) ;
 int i2o_cfg_swul (unsigned long) ;
 int i2o_cfg_validate (unsigned long) ;
 int osm_debug (char*) ;

__attribute__((used)) static int i2o_cfg_ioctl(struct inode *inode, struct file *fp, unsigned int cmd,
    unsigned long arg)
{
 int ret;

 switch (cmd) {
 case 137:
  ret = i2o_cfg_getiops(arg);
  break;

 case 136:
  ret = i2o_cfg_gethrt(arg);
  break;

 case 135:
  ret = i2o_cfg_getlct(arg);
  break;

 case 133:
  ret = i2o_cfg_parms(arg, 133);
  break;

 case 134:
  ret = i2o_cfg_parms(arg, 134);
  break;

 case 130:
  ret = i2o_cfg_swdl(arg);
  break;

 case 129:
  ret = i2o_cfg_swul(arg);
  break;

 case 131:
  ret = i2o_cfg_swdel(arg);
  break;

 case 128:
  ret = i2o_cfg_validate(arg);
  break;

 case 138:
  ret = i2o_cfg_evt_reg(arg, fp);
  break;

 case 139:
  ret = i2o_cfg_evt_get(arg, fp);
  break;







 default:
  osm_debug("unknown ioctl called!\n");
  ret = -EINVAL;
 }

 return ret;
}
