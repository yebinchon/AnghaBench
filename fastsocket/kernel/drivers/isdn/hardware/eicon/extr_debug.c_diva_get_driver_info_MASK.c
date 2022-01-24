#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t dword ;
typedef  int /*<<< orphan*/  diva_os_spin_lock_magic_t ;
typedef  void* byte ;
struct TYPE_5__ {int sec; int usec; TYPE_1__* hDbg; scalar_t__* drvName; } ;
struct TYPE_4__ {scalar_t__* drvTag; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 TYPE_2__* clients ; 
 int /*<<< orphan*/  dbg_q_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (void**,scalar_t__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

int FUNC6 (dword id, byte* data, int data_length) {
  diva_os_spin_lock_magic_t old_irql;
  byte* p = data;
  int to_copy;

  if (!data || !id || (data_length < 17) ||
      (id >= FUNC0(clients))) {
    return (-1);
  }

  FUNC1 (&dbg_q_lock, &old_irql, "driver info");

  if (clients[id].hDbg) {
    *p++ = 1;
    *p++ = (byte)clients[id].sec; /* save seconds */
    *p++ = (byte)(clients[id].sec >>  8);
    *p++ = (byte)(clients[id].sec >> 16);
    *p++ = (byte)(clients[id].sec >> 24);

    *p++ = (byte)(clients[id].usec/1000); /* save mseconds */
    *p++ = (byte)((clients[id].usec/1000) >>  8);
    *p++ = (byte)((clients[id].usec/1000) >> 16);
    *p++ = (byte)((clients[id].usec/1000) >> 24);

    data_length -= 9;

    if ((to_copy = FUNC4(FUNC5(clients[id].drvName), (size_t)(data_length-1)))) {
      FUNC3 (p, clients[id].drvName, to_copy);
      p += to_copy;
      data_length -= to_copy;
      if ((data_length >= 4) && clients[id].hDbg->drvTag[0]) {
        *p++ = '(';
        data_length -= 1;
        if ((to_copy = FUNC4(FUNC5(clients[id].hDbg->drvTag), (size_t)(data_length-2)))) {
          FUNC3 (p, clients[id].hDbg->drvTag, to_copy);
          p += to_copy;
          data_length -= to_copy;
          if (data_length >= 2) {
            *p++ = ')';
            data_length--;
          }
        }
      }
    }
  }
  *p++ = 0;

  FUNC2 (&dbg_q_lock, &old_irql, "driver info");

  return (p - data);
}