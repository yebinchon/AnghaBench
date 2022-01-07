
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et61x251_device {int dummy; } ;


 scalar_t__ et61x251_write_reg (struct et61x251_device*,int,int) ;

__attribute__((used)) static int tas5130d1b_init(struct et61x251_device* cam)
{
 int err = 0;

 err += et61x251_write_reg(cam, 0x14, 0x01);
 err += et61x251_write_reg(cam, 0x1b, 0x02);
 err += et61x251_write_reg(cam, 0x02, 0x12);
 err += et61x251_write_reg(cam, 0x0e, 0x60);
 err += et61x251_write_reg(cam, 0x80, 0x61);
 err += et61x251_write_reg(cam, 0xf0, 0x62);
 err += et61x251_write_reg(cam, 0x03, 0x63);
 err += et61x251_write_reg(cam, 0x14, 0x64);
 err += et61x251_write_reg(cam, 0xf4, 0x65);
 err += et61x251_write_reg(cam, 0x01, 0x66);
 err += et61x251_write_reg(cam, 0x05, 0x67);
 err += et61x251_write_reg(cam, 0x8f, 0x68);
 err += et61x251_write_reg(cam, 0x0f, 0x8d);
 err += et61x251_write_reg(cam, 0x08, 0x8e);

 return err;
}
