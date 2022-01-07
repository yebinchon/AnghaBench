
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {scalar_t__ error; scalar_t__ pwrite; scalar_t__ pread; } ;



void dvb_ringbuffer_reset(struct dvb_ringbuffer *rbuf)
{
 rbuf->pread = rbuf->pwrite = 0;
 rbuf->error = 0;
}
