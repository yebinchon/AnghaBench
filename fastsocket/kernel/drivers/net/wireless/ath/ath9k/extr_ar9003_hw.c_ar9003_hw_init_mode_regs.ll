; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_init_mode_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_init_mode_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64 }

@ATH_INI_CORE = common dso_local global i64 0, align 8
@ar9331_1p1_mac_core = common dso_local global i32 0, align 4
@ATH_INI_POST = common dso_local global i64 0, align 8
@ar9331_1p1_mac_postamble = common dso_local global i32 0, align 4
@ar9331_1p1_baseband_core = common dso_local global i32 0, align 4
@ar9331_1p1_baseband_postamble = common dso_local global i32 0, align 4
@ar9331_1p1_radio_core = common dso_local global i32 0, align 4
@ATH_INI_PRE = common dso_local global i64 0, align 8
@ar9331_1p1_soc_preamble = common dso_local global i32 0, align 4
@ar9331_1p1_soc_postamble = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_1p1 = common dso_local global i32 0, align 4
@ar9331_modes_lowest_ob_db_tx_gain_1p1 = common dso_local global i32 0, align 4
@ar9331_1p1_baseband_core_txfir_coeff_japan_2484 = common dso_local global i32 0, align 4
@ar9331_1p1_xtal_25M = common dso_local global i32 0, align 4
@ar9331_1p1_xtal_40M = common dso_local global i32 0, align 4
@ar9331_1p2_mac_core = common dso_local global i32 0, align 4
@ar9331_1p2_mac_postamble = common dso_local global i32 0, align 4
@ar9331_1p2_baseband_core = common dso_local global i32 0, align 4
@ar9331_1p2_baseband_postamble = common dso_local global i32 0, align 4
@ar9331_1p2_radio_core = common dso_local global i32 0, align 4
@ar9331_1p2_soc_preamble = common dso_local global i32 0, align 4
@ar9331_1p2_soc_postamble = common dso_local global i32 0, align 4
@ar9331_common_rx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_modes_lowest_ob_db_tx_gain_1p2 = common dso_local global i32 0, align 4
@ar9331_1p2_baseband_core_txfir_coeff_japan_2484 = common dso_local global i32 0, align 4
@ar9331_1p2_xtal_25M = common dso_local global i32 0, align 4
@ar9331_1p2_xtal_40M = common dso_local global i32 0, align 4
@ar9340_1p0_mac_core = common dso_local global i32 0, align 4
@ar9340_1p0_mac_postamble = common dso_local global i32 0, align 4
@ar9340_1p0_baseband_core = common dso_local global i32 0, align 4
@ar9340_1p0_baseband_postamble = common dso_local global i32 0, align 4
@ar9340_1p0_radio_core = common dso_local global i32 0, align 4
@ar9340_1p0_radio_postamble = common dso_local global i32 0, align 4
@ar9340_1p0_soc_preamble = common dso_local global i32 0, align 4
@ar9340_1p0_soc_postamble = common dso_local global i32 0, align 4
@ar9340Common_wo_xlna_rx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9340Modes_high_ob_db_tx_gain_table_1p0 = common dso_local global i32 0, align 4
@ar9340Modes_fast_clock_1p0 = common dso_local global i32 0, align 4
@ar9340_1p0_radio_core_40M = common dso_local global i32 0, align 4
@ar9485_1_1_mac_core = common dso_local global i32 0, align 4
@ar9485_1_1_mac_postamble = common dso_local global i32 0, align 4
@ar9485_1_1 = common dso_local global i32 0, align 4
@ar9485_1_1_baseband_core = common dso_local global i32 0, align 4
@ar9485_1_1_baseband_postamble = common dso_local global i32 0, align 4
@ar9485_1_1_radio_core = common dso_local global i32 0, align 4
@ar9485_1_1_radio_postamble = common dso_local global i32 0, align 4
@ar9485_1_1_soc_preamble = common dso_local global i32 0, align 4
@ar9485Common_wo_xlna_rx_gain_1_1 = common dso_local global i32 0, align 4
@ar9485_modes_lowest_ob_db_tx_gain_1_1 = common dso_local global i32 0, align 4
@ar9485_1_1_baseband_core_txfir_coeff_japan_2484 = common dso_local global i32 0, align 4
@ar9485_1_1_pcie_phy_clkreq_disable_L1 = common dso_local global i32 0, align 4
@ar9462_2p0_mac_core = common dso_local global i32 0, align 4
@ar9462_2p0_mac_postamble = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_core = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble = common dso_local global i32 0, align 4
@ar9462_2p0_radio_core = common dso_local global i32 0, align 4
@ar9462_2p0_radio_postamble = common dso_local global i32 0, align 4
@ar9462_2p0_radio_postamble_sys2ant = common dso_local global i32 0, align 4
@ar9462_2p0_soc_preamble = common dso_local global i32 0, align 4
@ar9462_2p0_soc_postamble = common dso_local global i32 0, align 4
@ar9462_common_rx_gain_table_2p0 = common dso_local global i32 0, align 4
@ar9462_pciephy_clkreq_disable_L1_2p0 = common dso_local global i32 0, align 4
@ar9462_modes_fast_clock_2p0 = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_core_txfir_coeff_japan_2484 = common dso_local global i32 0, align 4
@ar955x_1p0_mac_core = common dso_local global i32 0, align 4
@ar955x_1p0_mac_postamble = common dso_local global i32 0, align 4
@ar955x_1p0_baseband_core = common dso_local global i32 0, align 4
@ar955x_1p0_baseband_postamble = common dso_local global i32 0, align 4
@ar955x_1p0_radio_core = common dso_local global i32 0, align 4
@ar955x_1p0_radio_postamble = common dso_local global i32 0, align 4
@ar955x_1p0_soc_preamble = common dso_local global i32 0, align 4
@ar955x_1p0_soc_postamble = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_common_wo_xlna_rx_gain_bounds = common dso_local global i32 0, align 4
@ar955x_1p0_modes_xpa_tx_gain_table = common dso_local global i32 0, align 4
@ar955x_1p0_modes_fast_clock = common dso_local global i32 0, align 4
@ar9580_1p0_mac_core = common dso_local global i32 0, align 4
@ar9580_1p0_mac_postamble = common dso_local global i32 0, align 4
@ar9580_1p0_baseband_core = common dso_local global i32 0, align 4
@ar9580_1p0_baseband_postamble = common dso_local global i32 0, align 4
@ar9580_1p0_radio_core = common dso_local global i32 0, align 4
@ar9580_1p0_radio_postamble = common dso_local global i32 0, align 4
@ar9580_1p0_soc_preamble = common dso_local global i32 0, align 4
@ar9580_1p0_soc_postamble = common dso_local global i32 0, align 4
@ar9580_1p0_rx_gain_table = common dso_local global i32 0, align 4
@ar9580_1p0_low_ob_db_tx_gain_table = common dso_local global i32 0, align 4
@ar9580_1p0_modes_fast_clock = common dso_local global i32 0, align 4
@ar9565_1p0_mac_core = common dso_local global i32 0, align 4
@ar9565_1p0_mac_postamble = common dso_local global i32 0, align 4
@ar9565_1p0_baseband_core = common dso_local global i32 0, align 4
@ar9565_1p0_baseband_postamble = common dso_local global i32 0, align 4
@ar9565_1p0_radio_core = common dso_local global i32 0, align 4
@ar9565_1p0_radio_postamble = common dso_local global i32 0, align 4
@ar9565_1p0_soc_preamble = common dso_local global i32 0, align 4
@ar9565_1p0_soc_postamble = common dso_local global i32 0, align 4
@ar9565_1p0_Common_rx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_Modes_lowest_ob_db_tx_gain_table = common dso_local global i32 0, align 4
@ar9565_1p0_pciephy_clkreq_disable_L1 = common dso_local global i32 0, align 4
@ar9565_1p0_modes_fast_clock = common dso_local global i32 0, align 4
@ar9300_2p2_mac_core = common dso_local global i32 0, align 4
@ar9300_2p2_mac_postamble = common dso_local global i32 0, align 4
@ar9300_2p2_baseband_core = common dso_local global i32 0, align 4
@ar9300_2p2_baseband_postamble = common dso_local global i32 0, align 4
@ar9300_2p2_radio_core = common dso_local global i32 0, align 4
@ar9300_2p2_radio_postamble = common dso_local global i32 0, align 4
@ar9300_2p2_soc_preamble = common dso_local global i32 0, align 4
@ar9300_2p2_soc_postamble = common dso_local global i32 0, align 4
@ar9300Common_rx_gain_table_2p2 = common dso_local global i32 0, align 4
@ar9300Modes_lowest_ob_db_tx_gain_table_2p2 = common dso_local global i32 0, align 4
@ar9300PciePhy_pll_on_clkreq_disable_L1_2p2 = common dso_local global i32 0, align 4
@ar9300Modes_fast_clock_2p2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_init_mode_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_init_mode_regs(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9330_11(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %83

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @ATH_INI_CORE, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* @ar9331_1p1_mac_core, align 4
  %13 = call i32 @INIT_INI_ARRAY(i32* %11, i32 %12)
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @ATH_INI_POST, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* @ar9331_1p1_mac_postamble, align 4
  %20 = call i32 @INIT_INI_ARRAY(i32* %18, i32 %19)
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @ATH_INI_CORE, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* @ar9331_1p1_baseband_core, align 4
  %27 = call i32 @INIT_INI_ARRAY(i32* %25, i32 %26)
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @ATH_INI_POST, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* @ar9331_1p1_baseband_postamble, align 4
  %34 = call i32 @INIT_INI_ARRAY(i32* %32, i32 %33)
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @ATH_INI_CORE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* @ar9331_1p1_radio_core, align 4
  %41 = call i32 @INIT_INI_ARRAY(i32* %39, i32 %40)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @ATH_INI_PRE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* @ar9331_1p1_soc_preamble, align 4
  %48 = call i32 @INIT_INI_ARRAY(i32* %46, i32 %47)
  %49 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @ATH_INI_POST, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* @ar9331_1p1_soc_postamble, align 4
  %55 = call i32 @INIT_INI_ARRAY(i32* %53, i32 %54)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 4
  %58 = load i32, i32* @ar9331_common_rx_gain_1p1, align 4
  %59 = call i32 @INIT_INI_ARRAY(i32* %57, i32 %58)
  %60 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 3
  %62 = load i32, i32* @ar9331_modes_lowest_ob_db_tx_gain_1p1, align 4
  %63 = call i32 @INIT_INI_ARRAY(i32* %61, i32 %62)
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %64, i32 0, i32 10
  %66 = load i32, i32* @ar9331_1p1_baseband_core_txfir_coeff_japan_2484, align 4
  %67 = call i32 @INIT_INI_ARRAY(i32* %65, i32 %66)
  %68 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %69 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %68, i32 0, i32 13
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %6
  %73 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %73, i32 0, i32 12
  %75 = load i32, i32* @ar9331_1p1_xtal_25M, align 4
  %76 = call i32 @INIT_INI_ARRAY(i32* %74, i32 %75)
  br label %82

77:                                               ; preds = %6
  %78 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %79 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %78, i32 0, i32 12
  %80 = load i32, i32* @ar9331_1p1_xtal_40M, align 4
  %81 = call i32 @INIT_INI_ARRAY(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %728

83:                                               ; preds = %1
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = call i64 @AR_SREV_9330_12(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %164

87:                                               ; preds = %83
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @ATH_INI_CORE, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* @ar9331_1p2_mac_core, align 4
  %94 = call i32 @INIT_INI_ARRAY(i32* %92, i32 %93)
  %95 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %96 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %95, i32 0, i32 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @ATH_INI_POST, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* @ar9331_1p2_mac_postamble, align 4
  %101 = call i32 @INIT_INI_ARRAY(i32* %99, i32 %100)
  %102 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %102, i32 0, i32 7
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @ATH_INI_CORE, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* @ar9331_1p2_baseband_core, align 4
  %108 = call i32 @INIT_INI_ARRAY(i32* %106, i32 %107)
  %109 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %109, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @ATH_INI_POST, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* @ar9331_1p2_baseband_postamble, align 4
  %115 = call i32 @INIT_INI_ARRAY(i32* %113, i32 %114)
  %116 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %117 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %116, i32 0, i32 6
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @ATH_INI_CORE, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* @ar9331_1p2_radio_core, align 4
  %122 = call i32 @INIT_INI_ARRAY(i32* %120, i32 %121)
  %123 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %124 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @ATH_INI_PRE, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* @ar9331_1p2_soc_preamble, align 4
  %129 = call i32 @INIT_INI_ARRAY(i32* %127, i32 %128)
  %130 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %131 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @ATH_INI_POST, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* @ar9331_1p2_soc_postamble, align 4
  %136 = call i32 @INIT_INI_ARRAY(i32* %134, i32 %135)
  %137 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %138 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %137, i32 0, i32 4
  %139 = load i32, i32* @ar9331_common_rx_gain_1p2, align 4
  %140 = call i32 @INIT_INI_ARRAY(i32* %138, i32 %139)
  %141 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %142 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %141, i32 0, i32 3
  %143 = load i32, i32* @ar9331_modes_lowest_ob_db_tx_gain_1p2, align 4
  %144 = call i32 @INIT_INI_ARRAY(i32* %142, i32 %143)
  %145 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %146 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %145, i32 0, i32 10
  %147 = load i32, i32* @ar9331_1p2_baseband_core_txfir_coeff_japan_2484, align 4
  %148 = call i32 @INIT_INI_ARRAY(i32* %146, i32 %147)
  %149 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %150 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %149, i32 0, i32 13
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %87
  %154 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %155 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %154, i32 0, i32 12
  %156 = load i32, i32* @ar9331_1p2_xtal_25M, align 4
  %157 = call i32 @INIT_INI_ARRAY(i32* %155, i32 %156)
  br label %163

158:                                              ; preds = %87
  %159 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %160 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %159, i32 0, i32 12
  %161 = load i32, i32* @ar9331_1p2_xtal_40M, align 4
  %162 = call i32 @INIT_INI_ARRAY(i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %158, %153
  br label %727

164:                                              ; preds = %83
  %165 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %166 = call i64 @AR_SREV_9340(%struct.ath_hw* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %247

168:                                              ; preds = %164
  %169 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %170 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %169, i32 0, i32 8
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @ATH_INI_CORE, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* @ar9340_1p0_mac_core, align 4
  %175 = call i32 @INIT_INI_ARRAY(i32* %173, i32 %174)
  %176 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %177 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %176, i32 0, i32 8
  %178 = load i32*, i32** %177, align 8
  %179 = load i64, i64* @ATH_INI_POST, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* @ar9340_1p0_mac_postamble, align 4
  %182 = call i32 @INIT_INI_ARRAY(i32* %180, i32 %181)
  %183 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %184 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %183, i32 0, i32 7
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @ATH_INI_CORE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* @ar9340_1p0_baseband_core, align 4
  %189 = call i32 @INIT_INI_ARRAY(i32* %187, i32 %188)
  %190 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %191 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %190, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @ATH_INI_POST, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* @ar9340_1p0_baseband_postamble, align 4
  %196 = call i32 @INIT_INI_ARRAY(i32* %194, i32 %195)
  %197 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %198 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %197, i32 0, i32 6
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* @ATH_INI_CORE, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* @ar9340_1p0_radio_core, align 4
  %203 = call i32 @INIT_INI_ARRAY(i32* %201, i32 %202)
  %204 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %205 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @ATH_INI_POST, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* @ar9340_1p0_radio_postamble, align 4
  %210 = call i32 @INIT_INI_ARRAY(i32* %208, i32 %209)
  %211 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %212 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @ATH_INI_PRE, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* @ar9340_1p0_soc_preamble, align 4
  %217 = call i32 @INIT_INI_ARRAY(i32* %215, i32 %216)
  %218 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %219 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @ATH_INI_POST, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* @ar9340_1p0_soc_postamble, align 4
  %224 = call i32 @INIT_INI_ARRAY(i32* %222, i32 %223)
  %225 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %226 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %225, i32 0, i32 4
  %227 = load i32, i32* @ar9340Common_wo_xlna_rx_gain_table_1p0, align 4
  %228 = call i32 @INIT_INI_ARRAY(i32* %226, i32 %227)
  %229 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %230 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %229, i32 0, i32 3
  %231 = load i32, i32* @ar9340Modes_high_ob_db_tx_gain_table_1p0, align 4
  %232 = call i32 @INIT_INI_ARRAY(i32* %230, i32 %231)
  %233 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %234 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %233, i32 0, i32 0
  %235 = load i32, i32* @ar9340Modes_fast_clock_1p0, align 4
  %236 = call i32 @INIT_INI_ARRAY(i32* %234, i32 %235)
  %237 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %238 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %237, i32 0, i32 13
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %168
  %242 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %243 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %242, i32 0, i32 12
  %244 = load i32, i32* @ar9340_1p0_radio_core_40M, align 4
  %245 = call i32 @INIT_INI_ARRAY(i32* %243, i32 %244)
  br label %246

246:                                              ; preds = %241, %168
  br label %726

247:                                              ; preds = %164
  %248 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %249 = call i64 @AR_SREV_9485_11(%struct.ath_hw* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %328

251:                                              ; preds = %247
  %252 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %253 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %252, i32 0, i32 8
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @ATH_INI_CORE, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* @ar9485_1_1_mac_core, align 4
  %258 = call i32 @INIT_INI_ARRAY(i32* %256, i32 %257)
  %259 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %260 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %259, i32 0, i32 8
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @ATH_INI_POST, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* @ar9485_1_1_mac_postamble, align 4
  %265 = call i32 @INIT_INI_ARRAY(i32* %263, i32 %264)
  %266 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %267 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %266, i32 0, i32 7
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @ATH_INI_PRE, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* @ar9485_1_1, align 4
  %272 = call i32 @INIT_INI_ARRAY(i32* %270, i32 %271)
  %273 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %274 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %273, i32 0, i32 7
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* @ATH_INI_CORE, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  %278 = load i32, i32* @ar9485_1_1_baseband_core, align 4
  %279 = call i32 @INIT_INI_ARRAY(i32* %277, i32 %278)
  %280 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %281 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @ATH_INI_POST, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* @ar9485_1_1_baseband_postamble, align 4
  %286 = call i32 @INIT_INI_ARRAY(i32* %284, i32 %285)
  %287 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %288 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %287, i32 0, i32 6
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @ATH_INI_CORE, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* @ar9485_1_1_radio_core, align 4
  %293 = call i32 @INIT_INI_ARRAY(i32* %291, i32 %292)
  %294 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %295 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %294, i32 0, i32 6
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* @ATH_INI_POST, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  %299 = load i32, i32* @ar9485_1_1_radio_postamble, align 4
  %300 = call i32 @INIT_INI_ARRAY(i32* %298, i32 %299)
  %301 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %302 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %301, i32 0, i32 5
  %303 = load i32*, i32** %302, align 8
  %304 = load i64, i64* @ATH_INI_PRE, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* @ar9485_1_1_soc_preamble, align 4
  %307 = call i32 @INIT_INI_ARRAY(i32* %305, i32 %306)
  %308 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %309 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %308, i32 0, i32 4
  %310 = load i32, i32* @ar9485Common_wo_xlna_rx_gain_1_1, align 4
  %311 = call i32 @INIT_INI_ARRAY(i32* %309, i32 %310)
  %312 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %313 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %312, i32 0, i32 3
  %314 = load i32, i32* @ar9485_modes_lowest_ob_db_tx_gain_1_1, align 4
  %315 = call i32 @INIT_INI_ARRAY(i32* %313, i32 %314)
  %316 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %317 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %316, i32 0, i32 10
  %318 = load i32, i32* @ar9485_1_1_baseband_core_txfir_coeff_japan_2484, align 4
  %319 = call i32 @INIT_INI_ARRAY(i32* %317, i32 %318)
  %320 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %321 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %320, i32 0, i32 2
  %322 = load i32, i32* @ar9485_1_1_pcie_phy_clkreq_disable_L1, align 4
  %323 = call i32 @INIT_INI_ARRAY(i32* %321, i32 %322)
  %324 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %325 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %324, i32 0, i32 1
  %326 = load i32, i32* @ar9485_1_1_pcie_phy_clkreq_disable_L1, align 4
  %327 = call i32 @INIT_INI_ARRAY(i32* %325, i32 %326)
  br label %725

328:                                              ; preds = %247
  %329 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %330 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %413

332:                                              ; preds = %328
  %333 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %334 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %333, i32 0, i32 8
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* @ATH_INI_CORE, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  %338 = load i32, i32* @ar9462_2p0_mac_core, align 4
  %339 = call i32 @INIT_INI_ARRAY(i32* %337, i32 %338)
  %340 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %341 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %340, i32 0, i32 8
  %342 = load i32*, i32** %341, align 8
  %343 = load i64, i64* @ATH_INI_POST, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* @ar9462_2p0_mac_postamble, align 4
  %346 = call i32 @INIT_INI_ARRAY(i32* %344, i32 %345)
  %347 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %348 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %347, i32 0, i32 7
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* @ATH_INI_CORE, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* @ar9462_2p0_baseband_core, align 4
  %353 = call i32 @INIT_INI_ARRAY(i32* %351, i32 %352)
  %354 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %355 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %354, i32 0, i32 7
  %356 = load i32*, i32** %355, align 8
  %357 = load i64, i64* @ATH_INI_POST, align 8
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  %359 = load i32, i32* @ar9462_2p0_baseband_postamble, align 4
  %360 = call i32 @INIT_INI_ARRAY(i32* %358, i32 %359)
  %361 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %362 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %361, i32 0, i32 6
  %363 = load i32*, i32** %362, align 8
  %364 = load i64, i64* @ATH_INI_CORE, align 8
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  %366 = load i32, i32* @ar9462_2p0_radio_core, align 4
  %367 = call i32 @INIT_INI_ARRAY(i32* %365, i32 %366)
  %368 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %369 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %368, i32 0, i32 6
  %370 = load i32*, i32** %369, align 8
  %371 = load i64, i64* @ATH_INI_POST, align 8
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  %373 = load i32, i32* @ar9462_2p0_radio_postamble, align 4
  %374 = call i32 @INIT_INI_ARRAY(i32* %372, i32 %373)
  %375 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %376 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %375, i32 0, i32 11
  %377 = load i32, i32* @ar9462_2p0_radio_postamble_sys2ant, align 4
  %378 = call i32 @INIT_INI_ARRAY(i32* %376, i32 %377)
  %379 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %380 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %379, i32 0, i32 5
  %381 = load i32*, i32** %380, align 8
  %382 = load i64, i64* @ATH_INI_PRE, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32, i32* @ar9462_2p0_soc_preamble, align 4
  %385 = call i32 @INIT_INI_ARRAY(i32* %383, i32 %384)
  %386 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %387 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %386, i32 0, i32 5
  %388 = load i32*, i32** %387, align 8
  %389 = load i64, i64* @ATH_INI_POST, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  %391 = load i32, i32* @ar9462_2p0_soc_postamble, align 4
  %392 = call i32 @INIT_INI_ARRAY(i32* %390, i32 %391)
  %393 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %394 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %393, i32 0, i32 4
  %395 = load i32, i32* @ar9462_common_rx_gain_table_2p0, align 4
  %396 = call i32 @INIT_INI_ARRAY(i32* %394, i32 %395)
  %397 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %398 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %397, i32 0, i32 2
  %399 = load i32, i32* @ar9462_pciephy_clkreq_disable_L1_2p0, align 4
  %400 = call i32 @INIT_INI_ARRAY(i32* %398, i32 %399)
  %401 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %402 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %401, i32 0, i32 1
  %403 = load i32, i32* @ar9462_pciephy_clkreq_disable_L1_2p0, align 4
  %404 = call i32 @INIT_INI_ARRAY(i32* %402, i32 %403)
  %405 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %406 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %405, i32 0, i32 0
  %407 = load i32, i32* @ar9462_modes_fast_clock_2p0, align 4
  %408 = call i32 @INIT_INI_ARRAY(i32* %406, i32 %407)
  %409 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %410 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %409, i32 0, i32 10
  %411 = load i32, i32* @ar9462_2p0_baseband_core_txfir_coeff_japan_2484, align 4
  %412 = call i32 @INIT_INI_ARRAY(i32* %410, i32 %411)
  br label %724

413:                                              ; preds = %328
  %414 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %415 = call i64 @AR_SREV_9550(%struct.ath_hw* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %490

417:                                              ; preds = %413
  %418 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %419 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %418, i32 0, i32 8
  %420 = load i32*, i32** %419, align 8
  %421 = load i64, i64* @ATH_INI_CORE, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  %423 = load i32, i32* @ar955x_1p0_mac_core, align 4
  %424 = call i32 @INIT_INI_ARRAY(i32* %422, i32 %423)
  %425 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %426 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %425, i32 0, i32 8
  %427 = load i32*, i32** %426, align 8
  %428 = load i64, i64* @ATH_INI_POST, align 8
  %429 = getelementptr inbounds i32, i32* %427, i64 %428
  %430 = load i32, i32* @ar955x_1p0_mac_postamble, align 4
  %431 = call i32 @INIT_INI_ARRAY(i32* %429, i32 %430)
  %432 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %433 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %432, i32 0, i32 7
  %434 = load i32*, i32** %433, align 8
  %435 = load i64, i64* @ATH_INI_CORE, align 8
  %436 = getelementptr inbounds i32, i32* %434, i64 %435
  %437 = load i32, i32* @ar955x_1p0_baseband_core, align 4
  %438 = call i32 @INIT_INI_ARRAY(i32* %436, i32 %437)
  %439 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %440 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %439, i32 0, i32 7
  %441 = load i32*, i32** %440, align 8
  %442 = load i64, i64* @ATH_INI_POST, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* @ar955x_1p0_baseband_postamble, align 4
  %445 = call i32 @INIT_INI_ARRAY(i32* %443, i32 %444)
  %446 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %447 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %446, i32 0, i32 6
  %448 = load i32*, i32** %447, align 8
  %449 = load i64, i64* @ATH_INI_CORE, align 8
  %450 = getelementptr inbounds i32, i32* %448, i64 %449
  %451 = load i32, i32* @ar955x_1p0_radio_core, align 4
  %452 = call i32 @INIT_INI_ARRAY(i32* %450, i32 %451)
  %453 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %454 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %453, i32 0, i32 6
  %455 = load i32*, i32** %454, align 8
  %456 = load i64, i64* @ATH_INI_POST, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* @ar955x_1p0_radio_postamble, align 4
  %459 = call i32 @INIT_INI_ARRAY(i32* %457, i32 %458)
  %460 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %461 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %460, i32 0, i32 5
  %462 = load i32*, i32** %461, align 8
  %463 = load i64, i64* @ATH_INI_PRE, align 8
  %464 = getelementptr inbounds i32, i32* %462, i64 %463
  %465 = load i32, i32* @ar955x_1p0_soc_preamble, align 4
  %466 = call i32 @INIT_INI_ARRAY(i32* %464, i32 %465)
  %467 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %468 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %467, i32 0, i32 5
  %469 = load i32*, i32** %468, align 8
  %470 = load i64, i64* @ATH_INI_POST, align 8
  %471 = getelementptr inbounds i32, i32* %469, i64 %470
  %472 = load i32, i32* @ar955x_1p0_soc_postamble, align 4
  %473 = call i32 @INIT_INI_ARRAY(i32* %471, i32 %472)
  %474 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %475 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %474, i32 0, i32 4
  %476 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_table, align 4
  %477 = call i32 @INIT_INI_ARRAY(i32* %475, i32 %476)
  %478 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %479 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %478, i32 0, i32 9
  %480 = load i32, i32* @ar955x_1p0_common_wo_xlna_rx_gain_bounds, align 4
  %481 = call i32 @INIT_INI_ARRAY(i32* %479, i32 %480)
  %482 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %483 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %482, i32 0, i32 3
  %484 = load i32, i32* @ar955x_1p0_modes_xpa_tx_gain_table, align 4
  %485 = call i32 @INIT_INI_ARRAY(i32* %483, i32 %484)
  %486 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %487 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %486, i32 0, i32 0
  %488 = load i32, i32* @ar955x_1p0_modes_fast_clock, align 4
  %489 = call i32 @INIT_INI_ARRAY(i32* %487, i32 %488)
  br label %723

490:                                              ; preds = %413
  %491 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %492 = call i64 @AR_SREV_9580(%struct.ath_hw* %491)
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %563

494:                                              ; preds = %490
  %495 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %496 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %495, i32 0, i32 8
  %497 = load i32*, i32** %496, align 8
  %498 = load i64, i64* @ATH_INI_CORE, align 8
  %499 = getelementptr inbounds i32, i32* %497, i64 %498
  %500 = load i32, i32* @ar9580_1p0_mac_core, align 4
  %501 = call i32 @INIT_INI_ARRAY(i32* %499, i32 %500)
  %502 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %503 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %502, i32 0, i32 8
  %504 = load i32*, i32** %503, align 8
  %505 = load i64, i64* @ATH_INI_POST, align 8
  %506 = getelementptr inbounds i32, i32* %504, i64 %505
  %507 = load i32, i32* @ar9580_1p0_mac_postamble, align 4
  %508 = call i32 @INIT_INI_ARRAY(i32* %506, i32 %507)
  %509 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %510 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %509, i32 0, i32 7
  %511 = load i32*, i32** %510, align 8
  %512 = load i64, i64* @ATH_INI_CORE, align 8
  %513 = getelementptr inbounds i32, i32* %511, i64 %512
  %514 = load i32, i32* @ar9580_1p0_baseband_core, align 4
  %515 = call i32 @INIT_INI_ARRAY(i32* %513, i32 %514)
  %516 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %517 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %516, i32 0, i32 7
  %518 = load i32*, i32** %517, align 8
  %519 = load i64, i64* @ATH_INI_POST, align 8
  %520 = getelementptr inbounds i32, i32* %518, i64 %519
  %521 = load i32, i32* @ar9580_1p0_baseband_postamble, align 4
  %522 = call i32 @INIT_INI_ARRAY(i32* %520, i32 %521)
  %523 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %524 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %523, i32 0, i32 6
  %525 = load i32*, i32** %524, align 8
  %526 = load i64, i64* @ATH_INI_CORE, align 8
  %527 = getelementptr inbounds i32, i32* %525, i64 %526
  %528 = load i32, i32* @ar9580_1p0_radio_core, align 4
  %529 = call i32 @INIT_INI_ARRAY(i32* %527, i32 %528)
  %530 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %531 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %530, i32 0, i32 6
  %532 = load i32*, i32** %531, align 8
  %533 = load i64, i64* @ATH_INI_POST, align 8
  %534 = getelementptr inbounds i32, i32* %532, i64 %533
  %535 = load i32, i32* @ar9580_1p0_radio_postamble, align 4
  %536 = call i32 @INIT_INI_ARRAY(i32* %534, i32 %535)
  %537 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %538 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %537, i32 0, i32 5
  %539 = load i32*, i32** %538, align 8
  %540 = load i64, i64* @ATH_INI_PRE, align 8
  %541 = getelementptr inbounds i32, i32* %539, i64 %540
  %542 = load i32, i32* @ar9580_1p0_soc_preamble, align 4
  %543 = call i32 @INIT_INI_ARRAY(i32* %541, i32 %542)
  %544 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %545 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %544, i32 0, i32 5
  %546 = load i32*, i32** %545, align 8
  %547 = load i64, i64* @ATH_INI_POST, align 8
  %548 = getelementptr inbounds i32, i32* %546, i64 %547
  %549 = load i32, i32* @ar9580_1p0_soc_postamble, align 4
  %550 = call i32 @INIT_INI_ARRAY(i32* %548, i32 %549)
  %551 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %552 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %551, i32 0, i32 4
  %553 = load i32, i32* @ar9580_1p0_rx_gain_table, align 4
  %554 = call i32 @INIT_INI_ARRAY(i32* %552, i32 %553)
  %555 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %556 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %555, i32 0, i32 3
  %557 = load i32, i32* @ar9580_1p0_low_ob_db_tx_gain_table, align 4
  %558 = call i32 @INIT_INI_ARRAY(i32* %556, i32 %557)
  %559 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %560 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %559, i32 0, i32 0
  %561 = load i32, i32* @ar9580_1p0_modes_fast_clock, align 4
  %562 = call i32 @INIT_INI_ARRAY(i32* %560, i32 %561)
  br label %722

563:                                              ; preds = %490
  %564 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %565 = call i64 @AR_SREV_9565(%struct.ath_hw* %564)
  %566 = icmp ne i64 %565, 0
  br i1 %566, label %567, label %644

567:                                              ; preds = %563
  %568 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %569 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %568, i32 0, i32 8
  %570 = load i32*, i32** %569, align 8
  %571 = load i64, i64* @ATH_INI_CORE, align 8
  %572 = getelementptr inbounds i32, i32* %570, i64 %571
  %573 = load i32, i32* @ar9565_1p0_mac_core, align 4
  %574 = call i32 @INIT_INI_ARRAY(i32* %572, i32 %573)
  %575 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %576 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %575, i32 0, i32 8
  %577 = load i32*, i32** %576, align 8
  %578 = load i64, i64* @ATH_INI_POST, align 8
  %579 = getelementptr inbounds i32, i32* %577, i64 %578
  %580 = load i32, i32* @ar9565_1p0_mac_postamble, align 4
  %581 = call i32 @INIT_INI_ARRAY(i32* %579, i32 %580)
  %582 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %583 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %582, i32 0, i32 7
  %584 = load i32*, i32** %583, align 8
  %585 = load i64, i64* @ATH_INI_CORE, align 8
  %586 = getelementptr inbounds i32, i32* %584, i64 %585
  %587 = load i32, i32* @ar9565_1p0_baseband_core, align 4
  %588 = call i32 @INIT_INI_ARRAY(i32* %586, i32 %587)
  %589 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %590 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %589, i32 0, i32 7
  %591 = load i32*, i32** %590, align 8
  %592 = load i64, i64* @ATH_INI_POST, align 8
  %593 = getelementptr inbounds i32, i32* %591, i64 %592
  %594 = load i32, i32* @ar9565_1p0_baseband_postamble, align 4
  %595 = call i32 @INIT_INI_ARRAY(i32* %593, i32 %594)
  %596 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %597 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %596, i32 0, i32 6
  %598 = load i32*, i32** %597, align 8
  %599 = load i64, i64* @ATH_INI_CORE, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* @ar9565_1p0_radio_core, align 4
  %602 = call i32 @INIT_INI_ARRAY(i32* %600, i32 %601)
  %603 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %604 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %603, i32 0, i32 6
  %605 = load i32*, i32** %604, align 8
  %606 = load i64, i64* @ATH_INI_POST, align 8
  %607 = getelementptr inbounds i32, i32* %605, i64 %606
  %608 = load i32, i32* @ar9565_1p0_radio_postamble, align 4
  %609 = call i32 @INIT_INI_ARRAY(i32* %607, i32 %608)
  %610 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %611 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %610, i32 0, i32 5
  %612 = load i32*, i32** %611, align 8
  %613 = load i64, i64* @ATH_INI_PRE, align 8
  %614 = getelementptr inbounds i32, i32* %612, i64 %613
  %615 = load i32, i32* @ar9565_1p0_soc_preamble, align 4
  %616 = call i32 @INIT_INI_ARRAY(i32* %614, i32 %615)
  %617 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %618 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %617, i32 0, i32 5
  %619 = load i32*, i32** %618, align 8
  %620 = load i64, i64* @ATH_INI_POST, align 8
  %621 = getelementptr inbounds i32, i32* %619, i64 %620
  %622 = load i32, i32* @ar9565_1p0_soc_postamble, align 4
  %623 = call i32 @INIT_INI_ARRAY(i32* %621, i32 %622)
  %624 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %625 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %624, i32 0, i32 4
  %626 = load i32, i32* @ar9565_1p0_Common_rx_gain_table, align 4
  %627 = call i32 @INIT_INI_ARRAY(i32* %625, i32 %626)
  %628 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %629 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %628, i32 0, i32 3
  %630 = load i32, i32* @ar9565_1p0_Modes_lowest_ob_db_tx_gain_table, align 4
  %631 = call i32 @INIT_INI_ARRAY(i32* %629, i32 %630)
  %632 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %633 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %632, i32 0, i32 2
  %634 = load i32, i32* @ar9565_1p0_pciephy_clkreq_disable_L1, align 4
  %635 = call i32 @INIT_INI_ARRAY(i32* %633, i32 %634)
  %636 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %637 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %636, i32 0, i32 1
  %638 = load i32, i32* @ar9565_1p0_pciephy_clkreq_disable_L1, align 4
  %639 = call i32 @INIT_INI_ARRAY(i32* %637, i32 %638)
  %640 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %641 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %640, i32 0, i32 0
  %642 = load i32, i32* @ar9565_1p0_modes_fast_clock, align 4
  %643 = call i32 @INIT_INI_ARRAY(i32* %641, i32 %642)
  br label %721

644:                                              ; preds = %563
  %645 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %646 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %645, i32 0, i32 8
  %647 = load i32*, i32** %646, align 8
  %648 = load i64, i64* @ATH_INI_CORE, align 8
  %649 = getelementptr inbounds i32, i32* %647, i64 %648
  %650 = load i32, i32* @ar9300_2p2_mac_core, align 4
  %651 = call i32 @INIT_INI_ARRAY(i32* %649, i32 %650)
  %652 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %653 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %652, i32 0, i32 8
  %654 = load i32*, i32** %653, align 8
  %655 = load i64, i64* @ATH_INI_POST, align 8
  %656 = getelementptr inbounds i32, i32* %654, i64 %655
  %657 = load i32, i32* @ar9300_2p2_mac_postamble, align 4
  %658 = call i32 @INIT_INI_ARRAY(i32* %656, i32 %657)
  %659 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %660 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %659, i32 0, i32 7
  %661 = load i32*, i32** %660, align 8
  %662 = load i64, i64* @ATH_INI_CORE, align 8
  %663 = getelementptr inbounds i32, i32* %661, i64 %662
  %664 = load i32, i32* @ar9300_2p2_baseband_core, align 4
  %665 = call i32 @INIT_INI_ARRAY(i32* %663, i32 %664)
  %666 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %667 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %666, i32 0, i32 7
  %668 = load i32*, i32** %667, align 8
  %669 = load i64, i64* @ATH_INI_POST, align 8
  %670 = getelementptr inbounds i32, i32* %668, i64 %669
  %671 = load i32, i32* @ar9300_2p2_baseband_postamble, align 4
  %672 = call i32 @INIT_INI_ARRAY(i32* %670, i32 %671)
  %673 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %674 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %673, i32 0, i32 6
  %675 = load i32*, i32** %674, align 8
  %676 = load i64, i64* @ATH_INI_CORE, align 8
  %677 = getelementptr inbounds i32, i32* %675, i64 %676
  %678 = load i32, i32* @ar9300_2p2_radio_core, align 4
  %679 = call i32 @INIT_INI_ARRAY(i32* %677, i32 %678)
  %680 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %681 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %680, i32 0, i32 6
  %682 = load i32*, i32** %681, align 8
  %683 = load i64, i64* @ATH_INI_POST, align 8
  %684 = getelementptr inbounds i32, i32* %682, i64 %683
  %685 = load i32, i32* @ar9300_2p2_radio_postamble, align 4
  %686 = call i32 @INIT_INI_ARRAY(i32* %684, i32 %685)
  %687 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %688 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %687, i32 0, i32 5
  %689 = load i32*, i32** %688, align 8
  %690 = load i64, i64* @ATH_INI_PRE, align 8
  %691 = getelementptr inbounds i32, i32* %689, i64 %690
  %692 = load i32, i32* @ar9300_2p2_soc_preamble, align 4
  %693 = call i32 @INIT_INI_ARRAY(i32* %691, i32 %692)
  %694 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %695 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %694, i32 0, i32 5
  %696 = load i32*, i32** %695, align 8
  %697 = load i64, i64* @ATH_INI_POST, align 8
  %698 = getelementptr inbounds i32, i32* %696, i64 %697
  %699 = load i32, i32* @ar9300_2p2_soc_postamble, align 4
  %700 = call i32 @INIT_INI_ARRAY(i32* %698, i32 %699)
  %701 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %702 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %701, i32 0, i32 4
  %703 = load i32, i32* @ar9300Common_rx_gain_table_2p2, align 4
  %704 = call i32 @INIT_INI_ARRAY(i32* %702, i32 %703)
  %705 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %706 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %705, i32 0, i32 3
  %707 = load i32, i32* @ar9300Modes_lowest_ob_db_tx_gain_table_2p2, align 4
  %708 = call i32 @INIT_INI_ARRAY(i32* %706, i32 %707)
  %709 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %710 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %709, i32 0, i32 2
  %711 = load i32, i32* @ar9300PciePhy_pll_on_clkreq_disable_L1_2p2, align 4
  %712 = call i32 @INIT_INI_ARRAY(i32* %710, i32 %711)
  %713 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %714 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %713, i32 0, i32 1
  %715 = load i32, i32* @ar9300PciePhy_pll_on_clkreq_disable_L1_2p2, align 4
  %716 = call i32 @INIT_INI_ARRAY(i32* %714, i32 %715)
  %717 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %718 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %717, i32 0, i32 0
  %719 = load i32, i32* @ar9300Modes_fast_clock_2p2, align 4
  %720 = call i32 @INIT_INI_ARRAY(i32* %718, i32 %719)
  br label %721

721:                                              ; preds = %644, %567
  br label %722

722:                                              ; preds = %721, %494
  br label %723

723:                                              ; preds = %722, %417
  br label %724

724:                                              ; preds = %723, %332
  br label %725

725:                                              ; preds = %724, %251
  br label %726

726:                                              ; preds = %725, %246
  br label %727

727:                                              ; preds = %726, %163
  br label %728

728:                                              ; preds = %727, %82
  ret void
}

declare dso_local i64 @AR_SREV_9330_11(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9330_12(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9485_11(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9580(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
