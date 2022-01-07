
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int actual_length; int transfer_buffer; } ;
struct tty_struct {int flags; } ;
struct hso_serial {int curr_rx_urb_offset; scalar_t__* rx_urb_filled; int tty; } ;


 int D1 (char*) ;
 int TTY_THROTTLED ;
 size_t hso_urb_to_index (struct hso_serial*,struct urb*) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,int,int) ;
 struct tty_struct* tty_kref_get (int ) ;
 int tty_kref_put (struct tty_struct*) ;

__attribute__((used)) static int put_rxbuf_data(struct urb *urb, struct hso_serial *serial)
{
 struct tty_struct *tty;
 int write_length_remaining = 0;
 int curr_write_len;


 if (urb == ((void*)0) || serial == ((void*)0)) {
  D1("serial = NULL");
  return -2;
 }


 tty = tty_kref_get(serial->tty);


 if (tty) {
  write_length_remaining = urb->actual_length -
   serial->curr_rx_urb_offset;
  D1("data to push to tty");
  while (write_length_remaining) {
   if (test_bit(TTY_THROTTLED, &tty->flags)) {
    tty_kref_put(tty);
    return -1;
   }
   curr_write_len = tty_insert_flip_string
    (tty, urb->transfer_buffer +
     serial->curr_rx_urb_offset,
     write_length_remaining);
   serial->curr_rx_urb_offset += curr_write_len;
   write_length_remaining -= curr_write_len;
   tty_flip_buffer_push(tty);
  }
 }
 if (write_length_remaining == 0) {
  serial->curr_rx_urb_offset = 0;
  serial->rx_urb_filled[hso_urb_to_index(serial, urb)] = 0;
 }
 tty_kref_put(tty);
 return write_length_remaining;
}
