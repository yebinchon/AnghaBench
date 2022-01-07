
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zatm_dev {int chans; TYPE_2__* pool_info; int rx_map; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_3__ {int vci_bits; } ;
struct atm_dev {TYPE_1__ ci_range; } ;
struct TYPE_4__ {int next_thres; scalar_t__ next_cnt; scalar_t__ next_off; scalar_t__ offset; int high_water; int low_water; scalar_t__ rqu_count; scalar_t__ rqa_count; scalar_t__ ref_count; } ;


 int DPRINTK (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIGH_MARK ;
 int LOW_MARK ;
 int OFF_CNG_THRES ;
 struct zatm_dev* ZATM_DEV (struct atm_dev*) ;
 int ZATM_LAST_POOL ;
 int kzalloc (int,int ) ;
 int uPD98401_VRR ;
 int zpokel (struct zatm_dev*,int,int ) ;

__attribute__((used)) static int start_rx(struct atm_dev *dev)
{
 struct zatm_dev *zatm_dev;
 int size,i;

DPRINTK("start_rx\n");
 zatm_dev = ZATM_DEV(dev);
 size = sizeof(struct atm_vcc *)*zatm_dev->chans;
 zatm_dev->rx_map = kzalloc(size,GFP_KERNEL);
 if (!zatm_dev->rx_map) return -ENOMEM;

 zpokel(zatm_dev,(1 << dev->ci_range.vci_bits)-1,uPD98401_VRR);

 for (i = 0; i <= ZATM_LAST_POOL; i++) {
  zatm_dev->pool_info[i].ref_count = 0;
  zatm_dev->pool_info[i].rqa_count = 0;
  zatm_dev->pool_info[i].rqu_count = 0;
  zatm_dev->pool_info[i].low_water = LOW_MARK;
  zatm_dev->pool_info[i].high_water = HIGH_MARK;
  zatm_dev->pool_info[i].offset = 0;
  zatm_dev->pool_info[i].next_off = 0;
  zatm_dev->pool_info[i].next_cnt = 0;
  zatm_dev->pool_info[i].next_thres = OFF_CNG_THRES;
 }
 return 0;
}
