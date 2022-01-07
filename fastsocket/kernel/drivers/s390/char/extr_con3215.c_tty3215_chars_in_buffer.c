
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int count; } ;



__attribute__((used)) static int tty3215_chars_in_buffer(struct tty_struct *tty)
{
 struct raw3215_info *raw;

 raw = (struct raw3215_info *) tty->driver_data;
 return raw->count;
}
