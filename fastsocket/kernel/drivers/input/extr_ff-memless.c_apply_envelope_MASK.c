#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ml_effect_state {scalar_t__ stop_at; scalar_t__ play_at; struct ff_effect* effect; } ;
struct ff_envelope {int attack_length; int fade_length; int /*<<< orphan*/  fade_level; int /*<<< orphan*/  attack_level; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct ff_effect {TYPE_1__ replay; } ;

/* Variables and functions */
 int /*<<< orphan*/  __s16 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 unsigned long jiffies ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ml_effect_state *state, int value,
			  struct ff_envelope *envelope)
{
	struct ff_effect *effect = state->effect;
	unsigned long now = jiffies;
	int time_from_level;
	int time_of_envelope;
	int envelope_level;
	int difference;

	if (envelope->attack_length &&
	    FUNC6(now,
			state->play_at + FUNC4(envelope->attack_length))) {
		FUNC1("value = 0x%x, attack_level = 0x%x", value,
		      envelope->attack_level);
		time_from_level = FUNC2(now - state->play_at);
		time_of_envelope = envelope->attack_length;
		envelope_level = FUNC3(__s16, envelope->attack_level, 0x7fff);

	} else if (envelope->fade_length && effect->replay.length &&
		   FUNC5(now,
			      state->stop_at - FUNC4(envelope->fade_length)) &&
		   FUNC6(now, state->stop_at)) {
		time_from_level = FUNC2(state->stop_at - now);
		time_of_envelope = envelope->fade_length;
		envelope_level = FUNC3(__s16, envelope->fade_level, 0x7fff);
	} else
		return value;

	difference = FUNC0(value) - envelope_level;

	FUNC1("difference = %d", difference);
	FUNC1("time_from_level = 0x%x", time_from_level);
	FUNC1("time_of_envelope = 0x%x", time_of_envelope);

	difference = difference * time_from_level / time_of_envelope;

	FUNC1("difference = %d", difference);

	return value < 0 ?
		-(difference + envelope_level) : (difference + envelope_level);
}