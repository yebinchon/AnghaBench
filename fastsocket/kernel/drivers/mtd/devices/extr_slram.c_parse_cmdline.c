
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E (char*) ;
 int EINVAL ;
 unsigned long SLRAM_BLK_SZ ;
 int T (char*,char*,unsigned long,unsigned long) ;
 unsigned long handle_unit (unsigned long,char*) ;
 unsigned long register_device (char*,unsigned long,unsigned long) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 int unregister_devices () ;

__attribute__((used)) static int parse_cmdline(char *devname, char *szstart, char *szlength)
{
 char *buffer;
 unsigned long devstart;
 unsigned long devlength;

 if ((!devname) || (!szstart) || (!szlength)) {
  unregister_devices();
  return(-EINVAL);
 }

 devstart = simple_strtoul(szstart, &buffer, 0);
 devstart = handle_unit(devstart, buffer);

 if (*(szlength) != '+') {
  devlength = simple_strtoul(szlength, &buffer, 0);
  devlength = handle_unit(devlength, buffer) - devstart;
  if (devlength < devstart)
   goto err_out;

  devlength -= devstart;
 } else {
  devlength = simple_strtoul(szlength + 1, &buffer, 0);
  devlength = handle_unit(devlength, buffer);
 }
 T("slram: devname=%s, devstart=0x%lx, devlength=0x%lx\n",
   devname, devstart, devlength);
 if (devlength % SLRAM_BLK_SZ != 0)
  goto err_out;

 if ((devstart = register_device(devname, devstart, devlength))){
  unregister_devices();
  return((int)devstart);
 }
 return(0);

err_out:
 E("slram: Illegal length parameter.\n");
 return(-EINVAL);
}
