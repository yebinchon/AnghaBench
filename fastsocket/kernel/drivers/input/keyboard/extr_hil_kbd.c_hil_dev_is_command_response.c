
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hil_packet ;


 int HIL_CMDCT_POL ;
 int HIL_CMDCT_RPL ;
 int HIL_CMD_POL ;
 int HIL_CMD_RPL ;
 int HIL_ERR_INT ;
 int HIL_PKT_CMD ;

__attribute__((used)) static bool hil_dev_is_command_response(hil_packet p)
{
 if ((p & ~HIL_CMDCT_POL) == (HIL_ERR_INT | HIL_PKT_CMD | HIL_CMD_POL))
  return 0;

 if ((p & ~HIL_CMDCT_RPL) == (HIL_ERR_INT | HIL_PKT_CMD | HIL_CMD_RPL))
  return 0;

 return 1;
}
