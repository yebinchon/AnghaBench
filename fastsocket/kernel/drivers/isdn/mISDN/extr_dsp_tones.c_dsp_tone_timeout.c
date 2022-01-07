
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pattern {int* seq; int ** siz; int ** data; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct dsp_tone {int index; TYPE_1__ tl; int tone; scalar_t__ pattern; } ;
struct dsp {struct dsp_tone tone; } ;


 int * DATA_S ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int dsp_tone_hw_message (struct dsp*,int *,int ) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

void
dsp_tone_timeout(void *arg)
{
 struct dsp *dsp = arg;
 struct dsp_tone *tone = &dsp->tone;
 struct pattern *pat = (struct pattern *)tone->pattern;
 int index = tone->index;

 if (!tone->tone)
  return;

 index++;
 if (!pat->seq[index])
  index = 0;
 tone->index = index;


 if (pat->data[index] == DATA_S)
  dsp_tone_hw_message(dsp, ((void*)0), 0);
 else
  dsp_tone_hw_message(dsp, pat->data[index], *(pat->siz[index]));

 init_timer(&tone->tl);
 tone->tl.expires = jiffies + (pat->seq[index] * HZ) / 8000;
 add_timer(&tone->tl);
}
