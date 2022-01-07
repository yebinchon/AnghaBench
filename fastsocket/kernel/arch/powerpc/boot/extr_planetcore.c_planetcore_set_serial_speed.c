
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int MAX_PROP_LEN ;
 int PLANETCORE_KEY_SERIAL_BAUD ;
 void* finddevice (char*) ;
 int getprop (void*,char*,char*,int ) ;
 int planetcore_get_decimal (char const*,int ,int *) ;
 int printf (char*) ;
 char* prop_buf ;
 int setprop (void*,char*,int *,int) ;

void planetcore_set_serial_speed(const char *table)
{
 void *chosen, *stdout;
 u64 baud;
 u32 baud32;
 int len;

 chosen = finddevice("/chosen");
 if (!chosen)
  return;

 len = getprop(chosen, "linux,stdout-path", prop_buf, MAX_PROP_LEN);
 if (len <= 0)
  return;

 stdout = finddevice(prop_buf);
 if (!stdout) {
  printf("planetcore_set_serial_speed: "
         "Bad /chosen/linux,stdout-path.\r\n");

  return;
 }

 if (!planetcore_get_decimal(table, PLANETCORE_KEY_SERIAL_BAUD,
                             &baud)) {
  printf("planetcore_set_serial_speed: No SB tag.\r\n");
  return;
 }

 baud32 = baud;
 setprop(stdout, "current-speed", &baud32, 4);
}
