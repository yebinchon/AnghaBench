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
struct tp_params {int dummy; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_DACK_CONFIG ; 
 int /*<<< orphan*/  A_TP_EGRESS_CONFIG ; 
 int /*<<< orphan*/  A_TP_GLOBAL_CONFIG ; 
 int /*<<< orphan*/  A_TP_IN_CONFIG ; 
 int /*<<< orphan*/  A_TP_MOD_CHANNEL_WEIGHT ; 
 int /*<<< orphan*/  A_TP_MOD_RATE_LIMIT ; 
 int /*<<< orphan*/  A_TP_PARA_REG3 ; 
 int /*<<< orphan*/  A_TP_PARA_REG4 ; 
 int /*<<< orphan*/  A_TP_PARA_REG6 ; 
 int /*<<< orphan*/  A_TP_PC_CONFIG ; 
 int /*<<< orphan*/  A_TP_PC_CONFIG2 ; 
 int /*<<< orphan*/  A_TP_PROXY_FLOW_CNTL ; 
 int /*<<< orphan*/  A_TP_TCP_OPTIONS ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_WEIGHT0 ; 
 int /*<<< orphan*/  A_TP_TX_MOD_QUEUE_WEIGHT1 ; 
 int /*<<< orphan*/  A_TP_TX_RESOURCE_LIMIT ; 
 int F_AUTOCAREFUL ; 
 int F_AUTOENABLE ; 
 int F_CHDRAFULL ; 
 int F_DISBLEDAPARBIT0 ; 
 int F_ENABLEARPMISS ; 
 int F_ENABLEEPCMDAFULL ; 
 int F_ENABLEESND ; 
 int F_ENABLEIPV6RSS ; 
 int F_ENABLENONOFDTNLSYN ; 
 int F_ENABLEOCSPIFULL ; 
 int F_HEARBEATDACK ; 
 int F_IPCHECKSUMOFFLOAD ; 
 int F_IPV6ENABLE ; 
 int F_LOCKTID ; 
 int F_MTUENABLE ; 
 int F_NICMODE ; 
 int F_PATHMTU ; 
 int /*<<< orphan*/  F_REWRITEFORCETOSIZE ; 
 int F_RXCONGESTIONMODE ; 
 int F_RXFBARBPRIO ; 
 int F_T3A_ENABLEESND ; 
 int F_TCPCHECKSUMOFFLOAD ; 
 int F_TXCONGESTIONMODE ; 
 int F_TXDEFERENABLE ; 
 int F_TXFBARBPRIO ; 
 int F_TXPACEAUTO ; 
 int F_TXPACEAUTOSTRICT ; 
 int F_TXPACEFIXED ; 
 int F_TXPACINGENABLE ; 
 int F_UDPCHECKSUMOFFLOAD ; 
 int M_TABLELATENCYDELTA ; 
 scalar_t__ T3_REV_C ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct adapter *adap, const struct tp_params *p)
{
	FUNC14(adap, A_TP_GLOBAL_CONFIG, F_TXPACINGENABLE | F_PATHMTU |
		     F_IPCHECKSUMOFFLOAD | F_UDPCHECKSUMOFFLOAD |
		     F_TCPCHECKSUMOFFLOAD | FUNC5(64));
	FUNC14(adap, A_TP_TCP_OPTIONS, FUNC7(576) |
		     F_MTUENABLE | FUNC12(1) |
		     FUNC11(1) | FUNC8(1) | FUNC9(1));
	FUNC14(adap, A_TP_DACK_CONFIG, FUNC2(1) |
		     FUNC1(1) | FUNC0(0) |
		     FUNC3(26880) | FUNC6(2) |
		     F_AUTOCAREFUL | F_AUTOENABLE | FUNC4(1));
	FUNC13(adap, A_TP_IN_CONFIG, F_RXFBARBPRIO | F_TXFBARBPRIO,
			 F_IPV6ENABLE | F_NICMODE);
	FUNC14(adap, A_TP_TX_RESOURCE_LIMIT, 0x18141814);
	FUNC14(adap, A_TP_PARA_REG4, 0x5050105);
	FUNC13(adap, A_TP_PARA_REG6, 0,
			 adap->params.rev > 0 ? F_ENABLEESND :
			 F_T3A_ENABLEESND);

	FUNC13(adap, A_TP_PC_CONFIG,
			 F_ENABLEEPCMDAFULL,
			 F_ENABLEOCSPIFULL |F_TXDEFERENABLE | F_HEARBEATDACK |
			 F_TXCONGESTIONMODE | F_RXCONGESTIONMODE);
	FUNC13(adap, A_TP_PC_CONFIG2, F_CHDRAFULL,
			 F_ENABLEIPV6RSS | F_ENABLENONOFDTNLSYN |
			 F_ENABLEARPMISS | F_DISBLEDAPARBIT0);
	FUNC14(adap, A_TP_PROXY_FLOW_CNTL, 1080);
	FUNC14(adap, A_TP_PROXY_FLOW_CNTL, 1000);

	if (adap->params.rev > 0) {
		FUNC15(adap, A_TP_EGRESS_CONFIG, F_REWRITEFORCETOSIZE);
		FUNC13(adap, A_TP_PARA_REG3, F_TXPACEAUTO,
				 F_TXPACEAUTO);
		FUNC13(adap, A_TP_PC_CONFIG, F_LOCKTID, F_LOCKTID);
		FUNC13(adap, A_TP_PARA_REG3, 0, F_TXPACEAUTOSTRICT);
	} else
		FUNC13(adap, A_TP_PARA_REG3, 0, F_TXPACEFIXED);

	if (adap->params.rev == T3_REV_C)
		FUNC13(adap, A_TP_PC_CONFIG,
				 FUNC10(M_TABLELATENCYDELTA),
				 FUNC10(4));

	FUNC14(adap, A_TP_TX_MOD_QUEUE_WEIGHT1, 0);
	FUNC14(adap, A_TP_TX_MOD_QUEUE_WEIGHT0, 0);
	FUNC14(adap, A_TP_MOD_CHANNEL_WEIGHT, 0);
	FUNC14(adap, A_TP_MOD_RATE_LIMIT, 0xf2200000);
}