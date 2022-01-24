#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ dword ;
struct TYPE_20__ {int Channels; int trace_events_down; int l1_trace; int l2_trace; TYPE_2__* lines; int /*<<< orphan*/  modem_init_event; int /*<<< orphan*/  pending_modem_status; int /*<<< orphan*/  fax_init_event; int /*<<< orphan*/  pending_fax_status; int /*<<< orphan*/  pending_line_status; int /*<<< orphan*/  line_init_event; } ;
typedef  TYPE_3__ diva_strace_context_t ;
struct TYPE_21__ {int /*<<< orphan*/  path_length; } ;
typedef  TYPE_4__ diva_man_var_header_t ;
struct TYPE_19__ {TYPE_1__* pInterface; } ;
struct TYPE_18__ {char* Layer2; int /*<<< orphan*/ * Layer1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIVA_SUPER_TRACE_INTERFACE_CHANGE ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_4__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14 (diva_strace_context_t* pLib,
				diva_man_var_header_t* pVar) {
	const char* path = (char*)&pVar->path_length+1;
	char name[64];
	int i;

	if (!FUNC13("State\\B Event", path, pVar->path_length)) {
    dword ch_id;
    if (!FUNC9 (pVar, &ch_id)) {
      if (!pLib->line_init_event && !pLib->pending_line_status) {
        for (i = 1; i <= pLib->Channels; i++) {
          FUNC3(pLib, i);
        }
        return (0);
      } else if (ch_id && ch_id <= pLib->Channels) {
        return (FUNC3(pLib, (int)ch_id));
      }
      return (0);
    }
    return (-1);
  }

	if (!FUNC13("State\\FAX Event", path, pVar->path_length)) {
    dword ch_id;
    if (!FUNC9 (pVar, &ch_id)) {
      if (!pLib->pending_fax_status && !pLib->fax_init_event) {
        for (i = 1; i <= pLib->Channels; i++) {
          FUNC2(pLib, i);
        }
        return (0);
      } else if (ch_id && ch_id <= pLib->Channels) {
        return (FUNC2(pLib, (int)ch_id));
      }
      return (0);
    }
    return (-1);
  }

	if (!FUNC13("State\\Modem Event", path, pVar->path_length)) {
    dword ch_id;
    if (!FUNC9 (pVar, &ch_id)) {
      if (!pLib->pending_modem_status && !pLib->modem_init_event) {
        for (i = 1; i <= pLib->Channels; i++) {
          FUNC4(pLib, i);
        }
        return (0);
      } else if (ch_id && ch_id <= pLib->Channels) {
        return (FUNC4(pLib, (int)ch_id));
      }
      return (0);
    }
    return (-1);
  }

	/*
		First look for Line Event
		*/
	for (i = 1; i <= pLib->Channels; i++) {
		FUNC11 (name, "State\\B%d\\Line", i);
		if (FUNC10 (pVar, name)) {
			return (FUNC3(pLib, i));
		}
	}

	/*
		Look for Moden Progress Event
		*/
	for (i = 1; i <= pLib->Channels; i++) {
		FUNC11 (name, "State\\B%d\\Modem\\Event", i);
		if (FUNC10 (pVar, name)) {
			return (FUNC4 (pLib, i));
		}
	}

	/*
		Look for Fax Event
		*/
	for (i = 1; i <= pLib->Channels; i++) {
		FUNC11 (name, "State\\B%d\\FAX\\Event", i);
		if (FUNC10 (pVar, name)) {
			return (FUNC2 (pLib, i));
		}
	}

	/*
		Notification about loss of events
		*/
	if (!FUNC13("Events Down", path, pVar->path_length)) {
		if (pLib->trace_events_down == 1) {
			pLib->trace_events_down = 2;
		} else {
			FUNC7 (pLib, 1, "Events Down", 0);
		}
		return (0);
	}

	if (!FUNC13("State\\Layer1", path, pVar->path_length)) {
		FUNC5  (pVar, &pLib->lines[0].pInterface->Layer1[0]);
		if (pLib->l1_trace == 1) {
			pLib->l1_trace = 2;
		} else {
			FUNC8 (pLib, 0, DIVA_SUPER_TRACE_INTERFACE_CHANGE);
		}
		return (0);
	}
	if (!FUNC13("State\\Layer2 No1", path, pVar->path_length)) {
		char* tmp = &pLib->lines[0].pInterface->Layer2[0];
		dword l2_state;
		if (FUNC6(pVar, &l2_state))
			return -1;

		switch (l2_state) {
			case 0:
				FUNC12 (tmp, "Idle");
				break;
			case 1:
				FUNC12 (tmp, "Layer2 UP");
				break;
			case 2:
				FUNC12 (tmp, "Layer2 Disconnecting");
				break;
			case 3:
				FUNC12 (tmp, "Layer2 Connecting");
				break;
			case 4:
				FUNC12 (tmp, "SPID Initializing");
				break;
			case 5:
				FUNC12 (tmp, "SPID Initialised");
				break;
			case 6:
				FUNC12 (tmp, "Layer2 Connecting");
				break;

			case  7:
				FUNC12 (tmp, "Auto SPID Stopped");
				break;

			case  8:
				FUNC12 (tmp, "Auto SPID Idle");
				break;

			case  9:
				FUNC12 (tmp, "Auto SPID Requested");
				break;

			case  10:
				FUNC12 (tmp, "Auto SPID Delivery");
				break;

			case 11:
				FUNC12 (tmp, "Auto SPID Complete");
				break;

			default:
				FUNC11 (tmp, "U:%d", (int)l2_state);
		}
		if (pLib->l2_trace == 1) {
			pLib->l2_trace = 2;
		} else {
			FUNC8 (pLib, 0, DIVA_SUPER_TRACE_INTERFACE_CHANGE);
		}
		return (0);
	}

	if (!FUNC13("Statistics\\Incoming Calls\\Calls", path, pVar->path_length) ||
			!FUNC13("Statistics\\Incoming Calls\\Connected", path, pVar->path_length)) {
		return (FUNC0 (pLib));
	}

	if (!FUNC13("Statistics\\Outgoing Calls\\Calls", path, pVar->path_length) ||
			!FUNC13("Statistics\\Outgoing Calls\\Connected", path, pVar->path_length)) {
		return (FUNC1 (pLib));
	}

	return (-1);
}