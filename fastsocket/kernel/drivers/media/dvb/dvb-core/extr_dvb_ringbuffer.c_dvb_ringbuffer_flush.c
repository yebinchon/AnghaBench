
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ error; int pwrite; int pread; } ;



void dvb_ringbuffer_flush(struct dvb_ringbuffer *rbuf)
{
 rbuf->pread = rbuf->pwrite;
 rbuf->error = 0;
}
