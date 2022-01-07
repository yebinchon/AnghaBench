
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int V4L2_IDENT_CX23885_AV ;
 int V4L2_IDENT_CX23887_AV ;
 int V4L2_IDENT_CX23888_AV ;
 int cx25840_read4 (struct i2c_client*,int) ;
 int cx25840_write (struct i2c_client*,int,int) ;
 int v4l_err (struct i2c_client*,char*) ;

__attribute__((used)) static u32 get_cx2388x_ident(struct i2c_client *client)
{
 u32 ret;


 cx25840_write(client, 0x000, 0);







 if (cx25840_read4(client, 0x204) & 0xffff) {


  ret = cx25840_read4(client, 0x300);
  if (((ret & 0xffff0000) >> 16) == (ret & 0xffff)) {

   ret = V4L2_IDENT_CX23885_AV;
  } else {


   ret = V4L2_IDENT_CX23887_AV;
  }
 } else if (cx25840_read4(client, 0x300) & 0x0fffffff) {

  ret = V4L2_IDENT_CX23888_AV;
 } else {
  v4l_err(client, "Unable to detect h/w, assuming cx23887\n");
  ret = V4L2_IDENT_CX23887_AV;
 }


 cx25840_write(client, 0x000, 2);
 return ret;
}
