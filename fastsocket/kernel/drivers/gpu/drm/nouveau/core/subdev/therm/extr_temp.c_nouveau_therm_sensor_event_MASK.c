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
struct work_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pause ) (struct nouveau_therm*,int) ;int /*<<< orphan*/  (* downclock ) (struct nouveau_therm*,int) ;} ;
struct nouveau_therm_priv {TYPE_1__ emergency; } ;
struct nouveau_therm {int (* temp_get ) (struct nouveau_therm*) ;} ;
typedef  enum nouveau_therm_thrs_direction { ____Placeholder_nouveau_therm_thrs_direction } nouveau_therm_thrs_direction ;
typedef  enum nouveau_therm_thrs { ____Placeholder_nouveau_therm_thrs } nouveau_therm_thrs ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOUVEAU_THERM_CTRL_AUTO ; 
#define  NOUVEAU_THERM_THRS_CRITICAL 132 
#define  NOUVEAU_THERM_THRS_DOWNCLOCK 131 
 int NOUVEAU_THERM_THRS_FALLING ; 
#define  NOUVEAU_THERM_THRS_FANBOOST 130 
#define  NOUVEAU_THERM_THRS_NR 129 
 int NOUVEAU_THERM_THRS_RISING ; 
#define  NOUVEAU_THERM_THRS_SHUTDOWN 128 
 struct work_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_therm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_therm*,char*,int,char const*) ; 
 int /*<<< orphan*/  nv_poweroff_work ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 
 int FUNC6 (struct nouveau_therm*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_therm*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_therm*,int) ; 

void FUNC9(struct nouveau_therm *therm,
			        enum nouveau_therm_thrs thrs,
			        enum nouveau_therm_thrs_direction dir)
{
	struct nouveau_therm_priv *priv = (void *)therm;
	bool active;
	const char *thresolds[] = {
		"fanboost", "downclock", "critical", "shutdown"
	};
	int temperature = therm->temp_get(therm);

	if (thrs < 0 || thrs > 3)
		return;

	if (dir == NOUVEAU_THERM_THRS_FALLING)
		FUNC4(therm, "temperature (%i C) went below the '%s' threshold\n",
			temperature, thresolds[thrs]);
	else
		FUNC4(therm, "temperature (%i C) hit the '%s' threshold\n",
			temperature, thresolds[thrs]);

	active = (dir == NOUVEAU_THERM_THRS_RISING);
	switch (thrs) {
	case NOUVEAU_THERM_THRS_FANBOOST:
		if (active) {
			FUNC3(therm, true, 100);
			FUNC2(therm, NOUVEAU_THERM_CTRL_AUTO);
		}
		break;
	case NOUVEAU_THERM_THRS_DOWNCLOCK:
		if (priv->emergency.downclock)
			priv->emergency.downclock(therm, active);
		break;
	case NOUVEAU_THERM_THRS_CRITICAL:
		if (priv->emergency.pause)
			priv->emergency.pause(therm, active);
		break;
	case NOUVEAU_THERM_THRS_SHUTDOWN:
		if (active) {
			struct work_struct *work;

			work = FUNC1(sizeof(*work), GFP_ATOMIC);
			if (work) {
				FUNC0(work, nv_poweroff_work);
				FUNC5(work);
			}
		}
		break;
	case NOUVEAU_THERM_THRS_NR:
		break;
	}

}