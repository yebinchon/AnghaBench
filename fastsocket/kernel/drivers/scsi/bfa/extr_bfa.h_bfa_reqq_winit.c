
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_reqq_wait_s {void (* qresume ) (void*) ;void* cbarg; } ;



__attribute__((used)) static inline void
bfa_reqq_winit(struct bfa_reqq_wait_s *wqe, void (*qresume) (void *cbarg),
        void *cbarg)
{
 wqe->qresume = qresume;
 wqe->cbarg = cbarg;
}
