
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {int inputstate; int * rcvbuf; struct bc_state* bcs; struct cardstate* cs; scalar_t__ tail; scalar_t__ head; } ;
struct cardstate {int dummy; } ;
struct bc_state {int dummy; } ;



__attribute__((used)) static void gigaset_inbuf_init(struct inbuf_t *inbuf, struct bc_state *bcs,
          struct cardstate *cs, int inputstate)

{
 inbuf->head = 0;
 inbuf->tail = 0;
 inbuf->cs = cs;
 inbuf->bcs = bcs;
 inbuf->rcvbuf = ((void*)0);
 inbuf->inputstate = inputstate;
}
