
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pp_cam_entry {int dummy; } ;


 int DATA_IN ;
 int DATA_OUT ;
 int DBG (char*,...) ;
 int EINVAL ;
 int PACKET_LENGTH ;
 int ReadPacket (struct pp_cam_entry*,int*,int) ;
 int WritePacket (struct pp_cam_entry*,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int cpia_pp_transferCmd(void *privdata, u8 *command, u8 *data)
{
 int err;
 int retval=0;
 int databytes;
 struct pp_cam_entry *cam = privdata;

 if(cam == ((void*)0)) {
  DBG("Internal driver error: cam is NULL\n");
  return -EINVAL;
 }
 if(command == ((void*)0)) {
  DBG("Internal driver error: command is NULL\n");
  return -EINVAL;
 }
 databytes = (((int)command[7])<<8) | command[6];
 if ((err = WritePacket(cam, command, PACKET_LENGTH)) < 0) {
  DBG("Error writing command\n");
  return err;
 }
 if(command[0] == DATA_IN) {
  u8 buffer[8];
  if(data == ((void*)0)) {
   DBG("Internal driver error: data is NULL\n");
   return -EINVAL;
  }
  if((err = ReadPacket(cam, buffer, 8)) < 0) {
   DBG("Error reading command result\n");
         return err;
  }
  memcpy(data, buffer, databytes);
 } else if(command[0] == DATA_OUT) {
  if(databytes > 0) {
   if(data == ((void*)0)) {
    DBG("Internal driver error: data is NULL\n");
    retval = -EINVAL;
   } else {
    if((err=WritePacket(cam, data, databytes)) < 0){
     DBG("Error writing command data\n");
     return err;
    }
   }
  }
 } else {
  DBG("Unexpected first byte of command: %x\n", command[0]);
  retval = -EINVAL;
 }
 return retval;
}
