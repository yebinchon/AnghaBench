
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_rc_key {int scan; } ;



__attribute__((used)) static inline u8 rc5_custom(struct dvb_usb_rc_key *key)
{
 return (key->scan >> 8) & 0xff;
}
