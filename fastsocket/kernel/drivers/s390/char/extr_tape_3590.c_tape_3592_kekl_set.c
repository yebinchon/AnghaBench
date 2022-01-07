
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_request {int cpaddr; int op; struct tape3592_kekl_set_order* cpdata; } ;
struct tape_device {int dummy; } ;
struct tape390_kekl_pair {int * kekl; } ;
struct TYPE_2__ {int count; int * kekl; } ;
struct tape3592_kekl_set_order {int code; TYPE_1__ kekls; } ;


 int DBF_EVENT (int,char*) ;
 int EBADSLT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct tape_request*) ;
 int PERF_SUBSYS_FUNC ;
 int PTR_ERR (struct tape_request*) ;
 int TO_KEKL_SET ;
 scalar_t__ check_ext_kekl_pair (struct tape390_kekl_pair*) ;
 int ext_to_int_kekl (int *,int *) ;
 int memset (struct tape3592_kekl_set_order*,int ,int) ;
 scalar_t__ tape_3590_mttell (struct tape_device*,int ) ;
 struct tape_request* tape_alloc_request (int,int) ;
 int tape_ccw_end (int ,int ,int,struct tape3592_kekl_set_order*) ;
 int tape_do_io_free (struct tape_device*,struct tape_request*) ;

__attribute__((used)) static int tape_3592_kekl_set(struct tape_device *device,
         struct tape390_kekl_pair *ext_kekls)
{
 struct tape_request *request;
 struct tape3592_kekl_set_order *order;

 DBF_EVENT(6, "tape3592_kekl_set\n");
 if (check_ext_kekl_pair(ext_kekls)) {
  DBF_EVENT(6, "invalid kekls\n");
  return -EINVAL;
 }
 if (tape_3590_mttell(device, 0) != 0)
  return -EBADSLT;
 request = tape_alloc_request(1, sizeof(*order));
 if (IS_ERR(request))
  return PTR_ERR(request);
 order = request->cpdata;
 memset(order, 0, sizeof(*order));
 order->code = 0xe3;
 order->kekls.count = 2;
 ext_to_int_kekl(&ext_kekls->kekl[0], &order->kekls.kekl[0]);
 ext_to_int_kekl(&ext_kekls->kekl[1], &order->kekls.kekl[1]);
 request->op = TO_KEKL_SET;
 tape_ccw_end(request->cpaddr, PERF_SUBSYS_FUNC, sizeof(*order), order);

 return tape_do_io_free(device, request);
}
