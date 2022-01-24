#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct tda18271_std_map_item {int dummy; } ;
struct tda18271_std_map {struct tda18271_std_map_item atv_i; struct tda18271_std_map_item atv_lc; struct tda18271_std_map_item atv_l; struct tda18271_std_map_item atv_dk; struct tda18271_std_map_item atv_gh; struct tda18271_std_map_item atv_b; struct tda18271_std_map_item atv_mn; struct tda18271_std_map_item fm_radio; } ;
struct tda18271_priv {int frequency; scalar_t__ bandwidth; int /*<<< orphan*/  mode; struct tda18271_std_map std; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
struct analog_parameters {int frequency; int std; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  TDA18271_ANALOG ; 
 int V4L2_STD_B ; 
 int V4L2_STD_DK ; 
 int V4L2_STD_GH ; 
 int V4L2_STD_MN ; 
 int V4L2_STD_PAL_I ; 
 int V4L2_STD_SECAM_L ; 
 int V4L2_STD_SECAM_LC ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int FUNC0 (struct dvb_frontend*,struct tda18271_std_map_item*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
				      struct analog_parameters *params)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	struct tda18271_std_map *std_map = &priv->std;
	struct tda18271_std_map_item *map;
	char *mode;
	int ret;
	u32 freq = params->frequency * 125 *
		((params->mode == V4L2_TUNER_RADIO) ? 1 : 1000) / 2;

	priv->mode = TDA18271_ANALOG;

	if (params->mode == V4L2_TUNER_RADIO) {
		map = &std_map->fm_radio;
		mode = "fm";
	} else if (params->std & V4L2_STD_MN) {
		map = &std_map->atv_mn;
		mode = "MN";
	} else if (params->std & V4L2_STD_B) {
		map = &std_map->atv_b;
		mode = "B";
	} else if (params->std & V4L2_STD_GH) {
		map = &std_map->atv_gh;
		mode = "GH";
	} else if (params->std & V4L2_STD_PAL_I) {
		map = &std_map->atv_i;
		mode = "I";
	} else if (params->std & V4L2_STD_DK) {
		map = &std_map->atv_dk;
		mode = "DK";
	} else if (params->std & V4L2_STD_SECAM_L) {
		map = &std_map->atv_l;
		mode = "L";
	} else if (params->std & V4L2_STD_SECAM_LC) {
		map = &std_map->atv_lc;
		mode = "L'";
	} else {
		map = &std_map->atv_i;
		mode = "xx";
	}

	FUNC1("setting tda18271 to system %s\n", mode);

	ret = FUNC0(fe, map, freq, 0);

	if (FUNC2(ret))
		goto fail;

	priv->frequency = freq;
	priv->bandwidth = 0;
fail:
	return ret;
}