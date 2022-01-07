
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_config_request {int raw_minor; } ;


 int MKDEV (int ,int ) ;
 int RAW_MAJOR ;
 int device_create (int ,int *,int ,int *,char*,int ) ;
 int device_destroy (int ,int ) ;
 int raw_class ;

__attribute__((used)) static void bind_device(struct raw_config_request *rq)
{
 device_destroy(raw_class, MKDEV(RAW_MAJOR, rq->raw_minor));
 device_create(raw_class, ((void*)0), MKDEV(RAW_MAJOR, rq->raw_minor), ((void*)0),
        "raw%d", rq->raw_minor);
}
