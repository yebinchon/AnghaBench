
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpages {int dummy; } ;
struct TYPE_4__ {int addr; int vma; int bvec; int pl; } ;
struct TYPE_3__ {int type; TYPE_2__ ptr; int offset; } ;
struct dm_io_request {TYPE_1__ mem; } ;






 int EINVAL ;
 int bvec_dp_init (struct dpages*,int ) ;
 int km_dp_init (struct dpages*,int ) ;
 int list_dp_init (struct dpages*,int ,int ) ;
 int vm_dp_init (struct dpages*,int ) ;

__attribute__((used)) static int dp_init(struct dm_io_request *io_req, struct dpages *dp)
{

 switch (io_req->mem.type) {
 case 129:
  list_dp_init(dp, io_req->mem.ptr.pl, io_req->mem.offset);
  break;

 case 131:
  bvec_dp_init(dp, io_req->mem.ptr.bvec);
  break;

 case 128:
  vm_dp_init(dp, io_req->mem.ptr.vma);
  break;

 case 130:
  km_dp_init(dp, io_req->mem.ptr.addr);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
