
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;



__attribute__((used)) static inline int get_buf_nr(struct urb *urbs[], struct urb *urb)
{
        return (urbs[0]==urb ? 0 : 1);
}
