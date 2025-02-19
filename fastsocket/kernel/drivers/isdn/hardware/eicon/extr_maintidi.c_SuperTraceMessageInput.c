
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int word ;
struct TYPE_10__ {int complete; int Rc; int Ind; int RNum; int RNR; TYPE_2__* R; } ;
struct TYPE_8__ {int user_context; int (* trace_proc ) (int ,int *,int ,int*,int) ;} ;
struct TYPE_11__ {int removal_state; int rc_ok; int general_b_ch_event; int general_fax_event; int general_mdm_event; scalar_t__ ChannelsTraceActive; scalar_t__ Channels; scalar_t__ ModemTraceActive; scalar_t__ FaxTraceActive; int audio_trace_init; int trace_on; TYPE_3__ e; int Adapter; int instance; TYPE_1__ user_proc_table; scalar_t__* buffer; scalar_t__ req_busy; scalar_t__ audio_tap_pending; scalar_t__ eye_pattern_pending; } ;
typedef TYPE_4__ diva_strace_context_t ;
typedef int diva_man_var_header_t ;
typedef int byte ;
struct TYPE_9__ {int* P; int PLength; } ;


 int DLI_ERR ;




 int ScheduleNextTraceRequest (TYPE_4__*) ;
 int diva_mnt_internal_dprintf (int ,int ,char*,int) ;
 int process_idi_event (TYPE_4__*,int *) ;
 int process_idi_info (TYPE_4__*,int *) ;
 int stub1 (int ,int *,int ,int*,int) ;
 int stub2 (int ,int *,int ,int*,int) ;

__attribute__((used)) static int SuperTraceMessageInput (void* hLib) {
 diva_strace_context_t* pLib = (diva_strace_context_t*)hLib;
 int ret = 0;
  byte Rc, Ind;

  if (pLib->e.complete == 255) {



    pLib->req_busy = 0;
    Rc = pLib->e.Rc;
    pLib->e.Rc = 0;

    if (pLib->removal_state == 2) {
      pLib->removal_state = 3;
      return (0);
    }

  if (Rc != pLib->rc_ok) {
      int ignore = 0;



      if (pLib->general_b_ch_event == 1) {
        pLib->general_b_ch_event = 2;
        ignore = 1;
      } else if (pLib->general_fax_event == 1) {
        pLib->general_fax_event = 2;
        ignore = 1;
      } else if (pLib->general_mdm_event == 1) {
        pLib->general_mdm_event = 2;
        ignore = 1;
      } else if ((pLib->ChannelsTraceActive < pLib->Channels) && pLib->ChannelsTraceActive) {
        pLib->ChannelsTraceActive = pLib->Channels;
        ignore = 1;
      } else if (pLib->ModemTraceActive < pLib->Channels) {
        pLib->ModemTraceActive = pLib->Channels;
        ignore = 1;
      } else if (pLib->FaxTraceActive < pLib->Channels) {
        pLib->FaxTraceActive = pLib->Channels;
        ignore = 1;
      } else if (pLib->audio_trace_init == 2) {
        ignore = 1;
        pLib->audio_trace_init = 1;
      } else if (pLib->eye_pattern_pending) {
    pLib->eye_pattern_pending = 0;
    ignore = 1;
   } else if (pLib->audio_tap_pending) {
    pLib->audio_tap_pending = 0;
    ignore = 1;
      }

      if (!ignore) {
        return (-1);
      }
    } else {
      if (pLib->general_b_ch_event == 1) {
        pLib->ChannelsTraceActive = pLib->Channels;
        pLib->general_b_ch_event = 2;
      } else if (pLib->general_fax_event == 1) {
        pLib->general_fax_event = 2;
        pLib->FaxTraceActive = pLib->Channels;
      } else if (pLib->general_mdm_event == 1) {
        pLib->general_mdm_event = 2;
        pLib->ModemTraceActive = pLib->Channels;
      }
    }
    if (pLib->audio_trace_init == 2) {
      pLib->audio_trace_init = 1;
    }
    pLib->rc_ok = 0xff;
    if ((ret = ScheduleNextTraceRequest(pLib))) {
      return (-1);
    }
  } else {




    Ind = pLib->e.Ind;
    pLib->e.Ind = 0;
    if (pLib->removal_state) {
      pLib->e.RNum = 0;
      pLib->e.RNR = 2;
    } else if (pLib->req_busy) {
      pLib->e.RNum = 0;
      pLib->e.RNR = 1;
    } else {
      if (pLib->e.complete != 0x02) {



        pLib->e.RNum = 1;
        pLib->e.R->P = (byte*)&pLib->buffer[0];
        pLib->e.R->PLength = (word)(sizeof(pLib->buffer) - 1);

      } else {



        byte* p = (byte*)&pLib->buffer[0];
        pLib->buffer[pLib->e.R->PLength] = 0;

        switch (Ind) {
          case 131: {
            int total_length = pLib->e.R->PLength;
            word this_ind_length;

            while (total_length > 3 && *p) {
              Ind = *p++;
              this_ind_length = (word)p[0] | ((word)p[1] << 8);
              p += 2;

              switch (Ind) {
                case 129:
                  if (process_idi_info (pLib, (diva_man_var_header_t*)p)) {
                    return (-1);
                  }
                  break;
           case 130:
                  if (process_idi_event (pLib, (diva_man_var_header_t*)p)) {
                    return (-1);
                  }
                  break;
                case 128:
                  if (pLib->trace_on == 1) {




                    pLib->trace_on++;
                  } else {



                    if (pLib->user_proc_table.trace_proc) {
                      (*(pLib->user_proc_table.trace_proc))(pLib->user_proc_table.user_context,
                                                            &pLib->instance, pLib->Adapter,
                                                            p, this_ind_length);
                    }
                  }
                  break;
                default:
                  diva_mnt_internal_dprintf (0, DLI_ERR, "Unknon IDI Ind (DMA mode): %02x", Ind);
              }
              p += (this_ind_length+1);
              total_length -= (4 + this_ind_length);
            }
          } break;
          case 129:
            if (process_idi_info (pLib, (diva_man_var_header_t*)p)) {
              return (-1);
            }
            break;
     case 130:
            if (process_idi_event (pLib, (diva_man_var_header_t*)p)) {
              return (-1);
            }
            break;
          case 128:
            if (pLib->trace_on == 1) {




              pLib->trace_on++;
            } else {



              if (pLib->user_proc_table.trace_proc) {
                (*(pLib->user_proc_table.trace_proc))(pLib->user_proc_table.user_context,
                                                      &pLib->instance, pLib->Adapter,
                                                      p, pLib->e.R->PLength);
              }
            }
            break;
          default:
            diva_mnt_internal_dprintf (0, DLI_ERR, "Unknon IDI Ind: %02x", Ind);
        }
      }
    }
  }

 if ((ret = ScheduleNextTraceRequest(pLib))) {
  return (-1);
 }

 return (ret);
}
