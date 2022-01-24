#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int word ;
typedef  int dword ;
typedef  scalar_t__ byte ;
struct TYPE_9__ {int* flag_table; } ;
struct TYPE_8__ {int li_base; int manufacturer_features; TYPE_1__* AdvSignalPLCI; int /*<<< orphan*/  li_pri; TYPE_1__* plci; } ;
struct TYPE_7__ {int li_bchannel_id; scalar_t__ tel; } ;
typedef  TYPE_1__ PLCI ;
typedef  TYPE_2__ DIVA_CAPI_ADAPTER ;

/* Variables and functions */
 scalar_t__ ADV_VOICE ; 
 int EXT_CONTROLLER ; 
 int LI_FLAG_ANNOUNCEMENT ; 
 int LI_FLAG_ANNOUNCEMENT_A ; 
 int LI_FLAG_ANNOUNCEMENT_B ; 
 int LI_FLAG_CONFERENCE ; 
 int LI_FLAG_CONFERENCE_A_B ; 
 int LI_FLAG_CONFERENCE_B_A ; 
 int LI_FLAG_MIX ; 
 int LI_FLAG_MIX_A ; 
 int LI_FLAG_MIX_B ; 
 int LI_FLAG_MONITOR ; 
 int LI_FLAG_MONITOR_A ; 
 int LI_FLAG_MONITOR_B ; 
 int MANUFACTURER_FEATURE_SLAVE_CODEC ; 
 int MIXER_IC_CHANNEL_BASE ; 
 int FUNC0 (scalar_t__) ; 
 TYPE_2__* adapter ; 
 TYPE_5__* li_config_table ; 
 int li_total_channels ; 

__attribute__((used)) static void FUNC1 (dword Id, DIVA_CAPI_ADAPTER   *a, PLCI   *plci,
  dword plci_b_id, byte connect, dword li_flags)
{
  word i, ch_a, ch_a_v, ch_a_s, ch_b, ch_b_v, ch_b_s;
  PLCI   *plci_b;
  DIVA_CAPI_ADAPTER   *a_b;

  a_b = &(adapter[FUNC0 ((byte)(plci_b_id & 0x7f)) - 1]);
  plci_b = &(a_b->plci[((plci_b_id >> 8) & 0xff) - 1]);
  ch_a = a->li_base + (plci->li_bchannel_id - 1);
  if (!a->li_pri && (plci->tel == ADV_VOICE)
   && (plci == a->AdvSignalPLCI) && (Id & EXT_CONTROLLER))
  {
    ch_a_v = ch_a + MIXER_IC_CHANNEL_BASE;
    ch_a_s = (a->manufacturer_features & MANUFACTURER_FEATURE_SLAVE_CODEC) ?
      a->li_base + MIXER_IC_CHANNEL_BASE + (2 - plci->li_bchannel_id) : ch_a_v;
  }
  else
  {
    ch_a_v = ch_a;
    ch_a_s = ch_a;
  }
  ch_b = a_b->li_base + (plci_b->li_bchannel_id - 1);
  if (!a_b->li_pri && (plci_b->tel == ADV_VOICE)
   && (plci_b == a_b->AdvSignalPLCI) && (plci_b_id & EXT_CONTROLLER))
  {
    ch_b_v = ch_b + MIXER_IC_CHANNEL_BASE;
    ch_b_s = (a_b->manufacturer_features & MANUFACTURER_FEATURE_SLAVE_CODEC) ?
      a_b->li_base + MIXER_IC_CHANNEL_BASE + (2 - plci_b->li_bchannel_id) : ch_b_v;
  }
  else
  {
    ch_b_v = ch_b;
    ch_b_s = ch_b;
  }
  if (connect)
  {
    li_config_table[ch_a].flag_table[ch_a_v] &= ~LI_FLAG_MONITOR;
    li_config_table[ch_a].flag_table[ch_a_s] &= ~LI_FLAG_MONITOR;
    li_config_table[ch_a_v].flag_table[ch_a] &= ~(LI_FLAG_ANNOUNCEMENT | LI_FLAG_MIX);
    li_config_table[ch_a_s].flag_table[ch_a] &= ~(LI_FLAG_ANNOUNCEMENT | LI_FLAG_MIX);
  }
  li_config_table[ch_a].flag_table[ch_b_v] &= ~LI_FLAG_MONITOR;
  li_config_table[ch_a].flag_table[ch_b_s] &= ~LI_FLAG_MONITOR;
  li_config_table[ch_b_v].flag_table[ch_a] &= ~(LI_FLAG_ANNOUNCEMENT | LI_FLAG_MIX);
  li_config_table[ch_b_s].flag_table[ch_a] &= ~(LI_FLAG_ANNOUNCEMENT | LI_FLAG_MIX);
  if (ch_a_v == ch_b_v)
  {
    li_config_table[ch_a_v].flag_table[ch_b_v] &= ~LI_FLAG_CONFERENCE;
    li_config_table[ch_a_s].flag_table[ch_b_s] &= ~LI_FLAG_CONFERENCE;
  }
  else
  {
    if (li_config_table[ch_a_v].flag_table[ch_b_v] & LI_FLAG_CONFERENCE)
    {
      for (i = 0; i < li_total_channels; i++)
      {
        if (i != ch_a_v)
          li_config_table[ch_a_v].flag_table[i] &= ~LI_FLAG_CONFERENCE;
      }
    }
    if (li_config_table[ch_a_s].flag_table[ch_b_v] & LI_FLAG_CONFERENCE)
    {
      for (i = 0; i < li_total_channels; i++)
      {
        if (i != ch_a_s)
          li_config_table[ch_a_s].flag_table[i] &= ~LI_FLAG_CONFERENCE;
      }
    }
    if (li_config_table[ch_b_v].flag_table[ch_a_v] & LI_FLAG_CONFERENCE)
    {
      for (i = 0; i < li_total_channels; i++)
      {
        if (i != ch_a_v)
          li_config_table[i].flag_table[ch_a_v] &= ~LI_FLAG_CONFERENCE;
      }
    }
    if (li_config_table[ch_b_v].flag_table[ch_a_s] & LI_FLAG_CONFERENCE)
    {
      for (i = 0; i < li_total_channels; i++)
      {
        if (i != ch_a_s)
          li_config_table[i].flag_table[ch_a_s] &= ~LI_FLAG_CONFERENCE;
      }
    }
  }
  if (li_flags & LI_FLAG_CONFERENCE_A_B)
  {
    li_config_table[ch_b_v].flag_table[ch_a_v] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_b_s].flag_table[ch_a_v] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_b_v].flag_table[ch_a_s] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_b_s].flag_table[ch_a_s] |= LI_FLAG_CONFERENCE;
  }
  if (li_flags & LI_FLAG_CONFERENCE_B_A)
  {
    li_config_table[ch_a_v].flag_table[ch_b_v] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_a_v].flag_table[ch_b_s] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_a_s].flag_table[ch_b_v] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_a_s].flag_table[ch_b_s] |= LI_FLAG_CONFERENCE;
  }
  if (li_flags & LI_FLAG_MONITOR_A)
  {
    li_config_table[ch_a].flag_table[ch_a_v] |= LI_FLAG_MONITOR;
    li_config_table[ch_a].flag_table[ch_a_s] |= LI_FLAG_MONITOR;
  }
  if (li_flags & LI_FLAG_MONITOR_B)
  {
    li_config_table[ch_a].flag_table[ch_b_v] |= LI_FLAG_MONITOR;
    li_config_table[ch_a].flag_table[ch_b_s] |= LI_FLAG_MONITOR;
  }
  if (li_flags & LI_FLAG_ANNOUNCEMENT_A)
  {
    li_config_table[ch_a_v].flag_table[ch_a] |= LI_FLAG_ANNOUNCEMENT;
    li_config_table[ch_a_s].flag_table[ch_a] |= LI_FLAG_ANNOUNCEMENT;
  }
  if (li_flags & LI_FLAG_ANNOUNCEMENT_B)
  {
    li_config_table[ch_b_v].flag_table[ch_a] |= LI_FLAG_ANNOUNCEMENT;
    li_config_table[ch_b_s].flag_table[ch_a] |= LI_FLAG_ANNOUNCEMENT;
  }
  if (li_flags & LI_FLAG_MIX_A)
  {
    li_config_table[ch_a_v].flag_table[ch_a] |= LI_FLAG_MIX;
    li_config_table[ch_a_s].flag_table[ch_a] |= LI_FLAG_MIX;
  }
  if (li_flags & LI_FLAG_MIX_B)
  {
    li_config_table[ch_b_v].flag_table[ch_a] |= LI_FLAG_MIX;
    li_config_table[ch_b_s].flag_table[ch_a] |= LI_FLAG_MIX;
  }
  if (ch_a_v != ch_a_s)
  {
    li_config_table[ch_a_v].flag_table[ch_a_s] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_a_s].flag_table[ch_a_v] |= LI_FLAG_CONFERENCE;
  }
  if (ch_b_v != ch_b_s)
  {
    li_config_table[ch_b_v].flag_table[ch_b_s] |= LI_FLAG_CONFERENCE;
    li_config_table[ch_b_s].flag_table[ch_b_v] |= LI_FLAG_CONFERENCE;
  }
}