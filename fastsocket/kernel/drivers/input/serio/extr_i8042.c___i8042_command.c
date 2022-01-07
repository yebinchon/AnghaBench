
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_CMD_AUX_LOOP ;
 int I8042_STR_AUXDATA ;
 int dbg (char*,...) ;
 scalar_t__ i8042_noloop ;
 unsigned char i8042_read_data () ;
 int i8042_read_status () ;
 int i8042_wait_read () ;
 int i8042_wait_write () ;
 int i8042_write_command (int) ;
 int i8042_write_data (unsigned char) ;

__attribute__((used)) static int __i8042_command(unsigned char *param, int command)
{
 int i, error;

 if (i8042_noloop && command == I8042_CMD_AUX_LOOP)
  return -1;

 error = i8042_wait_write();
 if (error)
  return error;

 dbg("%02x -> i8042 (command)", command & 0xff);
 i8042_write_command(command & 0xff);

 for (i = 0; i < ((command >> 12) & 0xf); i++) {
  error = i8042_wait_write();
  if (error)
   return error;
  dbg("%02x -> i8042 (parameter)", param[i]);
  i8042_write_data(param[i]);
 }

 for (i = 0; i < ((command >> 8) & 0xf); i++) {
  error = i8042_wait_read();
  if (error) {
   dbg("     -- i8042 (timeout)");
   return error;
  }

  if (command == I8042_CMD_AUX_LOOP &&
      !(i8042_read_status() & I8042_STR_AUXDATA)) {
   dbg("     -- i8042 (auxerr)");
   return -1;
  }

  param[i] = i8042_read_data();
  dbg("%02x <- i8042 (return)", param[i]);
 }

 return 0;
}
