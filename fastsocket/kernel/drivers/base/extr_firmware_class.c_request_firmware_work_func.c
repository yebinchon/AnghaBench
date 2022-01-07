
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_work {int module; int context; int (* cont ) (struct firmware const*,int ) ;int uevent; int device; int name; } ;
struct firmware {int dummy; } ;


 int WARN_ON (int) ;
 int _request_firmware (struct firmware const**,int ,int ,int ) ;
 int kfree (struct firmware_work*) ;
 int module_put (int ) ;
 int stub1 (struct firmware const*,int ) ;

__attribute__((used)) static int
request_firmware_work_func(void *arg)
{
 struct firmware_work *fw_work = arg;
 const struct firmware *fw;
 int ret;
 if (!arg) {
  WARN_ON(1);
  return 0;
 }
 ret = _request_firmware(&fw, fw_work->name, fw_work->device,
  fw_work->uevent);

 fw_work->cont(fw, fw_work->context);

 module_put(fw_work->module);
 kfree(fw_work);
 return ret;
}
