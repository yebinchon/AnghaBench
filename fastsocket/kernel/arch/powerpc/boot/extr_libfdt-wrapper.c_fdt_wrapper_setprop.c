
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_NOSPACE ;
 int check_err (int) ;
 int devp_offset (void const*) ;
 int expand_buf (int const) ;
 int fdt ;
 int fdt_setprop (int ,int ,char const*,void const*,int const) ;

__attribute__((used)) static int fdt_wrapper_setprop(const void *devp, const char *name,
          const void *buf, const int len)
{
 int rc;

 rc = fdt_setprop(fdt, devp_offset(devp), name, buf, len);
 if (rc == -FDT_ERR_NOSPACE) {
  expand_buf(len + 16);
  rc = fdt_setprop(fdt, devp_offset(devp), name, buf, len);
 }

 return check_err(rc);
}
