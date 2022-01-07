
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xc2028_ctrl {int max_len; void* demod; void* fname; int mts; } ;
struct em28xx {size_t model; } ;
struct TYPE_2__ {int mts_firmware; } ;
 void* XC2028_DEFAULT_FIRMWARE ;
 void* XC3028L_DEFAULT_FIRMWARE ;
 void* XC3028_FE_CHINA ;
 void* XC3028_FE_DEFAULT ;
 void* XC3028_FE_OREN538 ;
 void* XC3028_FE_ZARLINK456 ;
 TYPE_1__* em28xx_boards ;
 int memset (struct xc2028_ctrl*,int ,int) ;

__attribute__((used)) static void em28xx_setup_xc3028(struct em28xx *dev, struct xc2028_ctrl *ctl)
{
 memset(ctl, 0, sizeof(*ctl));

 ctl->fname = XC2028_DEFAULT_FIRMWARE;
 ctl->max_len = 64;
 ctl->mts = em28xx_boards[dev->model].mts_firmware;

 switch (dev->model) {
 case 141:
 case 140:
 case 131:
  ctl->demod = XC3028_FE_ZARLINK456;
  break;
 case 137:
 case 136:
 case 135:
  ctl->demod = XC3028_FE_ZARLINK456;
  break;
 case 139:

  ctl->demod = XC3028_FE_DEFAULT;
  break;
 case 142:
  ctl->demod = XC3028_FE_DEFAULT;
  ctl->fname = XC3028L_DEFAULT_FIRMWARE;
  break;
 case 130:
 case 129:
 case 138:

  ctl->demod = XC3028_FE_DEFAULT;
  break;
 case 128:
 case 134:
 case 132:
  ctl->demod = XC3028_FE_CHINA;
  ctl->fname = XC2028_DEFAULT_FIRMWARE;
  break;
 case 133:
  ctl->demod = XC3028_FE_CHINA;
  ctl->fname = XC3028L_DEFAULT_FIRMWARE;
  break;
 default:
  ctl->demod = XC3028_FE_OREN538;
 }
}
