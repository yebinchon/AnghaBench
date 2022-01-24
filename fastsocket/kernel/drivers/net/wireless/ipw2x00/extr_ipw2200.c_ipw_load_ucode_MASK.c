#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int alive_command; int ucode_valid; int /*<<< orphan*/ * time_stamp; int /*<<< orphan*/  device_identifier; int /*<<< orphan*/  software_revision; } ;
struct ipw_priv {TYPE_1__ dino_alive; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DINO_ENABLE_CS ; 
 int DINO_ENABLE_SYSTEM ; 
 int DINO_RXFIFO_DATA ; 
 int EINVAL ; 
 int ETIME ; 
 int /*<<< orphan*/  IPW_BASEBAND_CONTROL_STATUS ; 
 int /*<<< orphan*/  IPW_BASEBAND_CONTROL_STORE ; 
 int /*<<< orphan*/  IPW_BASEBAND_POWER_DOWN ; 
 int /*<<< orphan*/  IPW_BASEBAND_RX_FIFO_READ ; 
 int /*<<< orphan*/  IPW_BIT_HALT_RESET_OFF ; 
 int /*<<< orphan*/  IPW_BIT_HALT_RESET_ON ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  IPW_INTERNAL_CMD_EVENT ; 
 int /*<<< orphan*/  IPW_MEM_HALT_AND_RESET ; 
 int IPW_REGISTER_DOMAIN1_END ; 
 int IPW_SHARED_LOWER_BOUND ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipw_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct ipw_priv *priv, u8 * data, size_t len)
{
	int rc = 0, i, addr;
	u8 cr = 0;
	__le16 *image;

	image = (__le16 *) data;

	FUNC2(">>\n");

	rc = FUNC7(priv);

	if (rc < 0)
		return rc;

	for (addr = IPW_SHARED_LOWER_BOUND;
	     addr < IPW_REGISTER_DOMAIN1_END; addr += 4) {
		FUNC8(priv, addr, 0);
	}

	/* no ucode (yet) */
	FUNC15(&priv->dino_alive, 0, sizeof(priv->dino_alive));
	/* destroy DMA queues */
	/* reset sequence */

	FUNC10(priv, IPW_MEM_HALT_AND_RESET, IPW_BIT_HALT_RESET_ON);
	FUNC4(priv);
	FUNC10(priv, IPW_MEM_HALT_AND_RESET, IPW_BIT_HALT_RESET_OFF);
	FUNC13(1);

	/* reset PHY */
	FUNC10(priv, IPW_INTERNAL_CMD_EVENT, IPW_BASEBAND_POWER_DOWN);
	FUNC13(1);

	FUNC10(priv, IPW_INTERNAL_CMD_EVENT, 0);
	FUNC13(1);

	/* enable ucode store */
	FUNC11(priv, IPW_BASEBAND_CONTROL_STATUS, 0x0);
	FUNC11(priv, IPW_BASEBAND_CONTROL_STATUS, DINO_ENABLE_CS);
	FUNC13(1);

	/* write ucode */
	/**
	 * @bug
	 * Do NOT set indirect address register once and then
	 * store data to indirect data register in the loop.
	 * It seems very reasonable, but in this case DINO do not
	 * accept ucode. It is essential to set address each time.
	 */
	/* load new ipw uCode */
	for (i = 0; i < len / 2; i++)
		FUNC9(priv, IPW_BASEBAND_CONTROL_STORE,
				FUNC12(image[i]));

	/* enable DINO */
	FUNC11(priv, IPW_BASEBAND_CONTROL_STATUS, 0);
	FUNC11(priv, IPW_BASEBAND_CONTROL_STATUS, DINO_ENABLE_SYSTEM);

	/* this is where the igx / win driver deveates from the VAP driver. */

	/* wait for alive response */
	for (i = 0; i < 100; i++) {
		/* poll for incoming data */
		cr = FUNC6(priv, IPW_BASEBAND_CONTROL_STATUS);
		if (cr & DINO_RXFIFO_DATA)
			break;
		FUNC13(1);
	}

	if (cr & DINO_RXFIFO_DATA) {
		/* alive_command_responce size is NOT multiple of 4 */
		__le32 response_buffer[(sizeof(priv->dino_alive) + 3) / 4];

		for (i = 0; i < FUNC0(response_buffer); i++)
			response_buffer[i] =
			    FUNC3(FUNC5(priv,
						       IPW_BASEBAND_RX_FIFO_READ));
		FUNC14(&priv->dino_alive, response_buffer,
		       sizeof(priv->dino_alive));
		if (priv->dino_alive.alive_command == 1
		    && priv->dino_alive.ucode_valid == 1) {
			rc = 0;
			FUNC1
			    ("Microcode OK, rev. %d (0x%x) dev. %d (0x%x) "
			     "of %02d/%02d/%02d %02d:%02d\n",
			     priv->dino_alive.software_revision,
			     priv->dino_alive.software_revision,
			     priv->dino_alive.device_identifier,
			     priv->dino_alive.device_identifier,
			     priv->dino_alive.time_stamp[0],
			     priv->dino_alive.time_stamp[1],
			     priv->dino_alive.time_stamp[2],
			     priv->dino_alive.time_stamp[3],
			     priv->dino_alive.time_stamp[4]);
		} else {
			FUNC1("Microcode is not alive\n");
			rc = -EINVAL;
		}
	} else {
		FUNC1("No alive response from DINO\n");
		rc = -ETIME;
	}

	/* disable DINO, otherwise for some reason
	   firmware have problem getting alive resp. */
	FUNC11(priv, IPW_BASEBAND_CONTROL_STATUS, 0);

	return rc;
}