; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_bmac_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_bmac_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.bnx2x = type { %struct.bnx2x_eth_stats }
%struct.bnx2x_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_port_stats = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.bmac1_stats = type { i32 }
%struct.bmac2_stats = type { i32, i32, i32, i32 }

@port_stats = common dso_local global i32 0, align 4
@mac_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@rx_stat_grerb = common dso_local global i32 0, align 4
@rx_stat_ifhcinbadoctets = common dso_local global i32 0, align 4
@rx_stat_grfcs = common dso_local global i32 0, align 4
@rx_stat_dot3statsfcserrors = common dso_local global i32 0, align 4
@rx_stat_grund = common dso_local global i32 0, align 4
@rx_stat_etherstatsundersizepkts = common dso_local global i32 0, align 4
@rx_stat_grovr = common dso_local global i32 0, align 4
@rx_stat_dot3statsframestoolong = common dso_local global i32 0, align 4
@rx_stat_grfrg = common dso_local global i32 0, align 4
@rx_stat_etherstatsfragments = common dso_local global i32 0, align 4
@rx_stat_grjbr = common dso_local global i32 0, align 4
@rx_stat_etherstatsjabbers = common dso_local global i32 0, align 4
@rx_stat_grxcf = common dso_local global i32 0, align 4
@rx_stat_maccontrolframesreceived = common dso_local global i32 0, align 4
@rx_stat_grxpf = common dso_local global i32 0, align 4
@rx_stat_xoffstateentered = common dso_local global i32 0, align 4
@rx_stat_mac_xpf = common dso_local global i32 0, align 4
@tx_stat_gtxpf = common dso_local global i32 0, align 4
@tx_stat_outxoffsent = common dso_local global i32 0, align 4
@tx_stat_flowcontroldone = common dso_local global i32 0, align 4
@tx_stat_gt64 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts64octets = common dso_local global i32 0, align 4
@tx_stat_gt127 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts65octetsto127octets = common dso_local global i32 0, align 4
@tx_stat_gt255 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts128octetsto255octets = common dso_local global i32 0, align 4
@tx_stat_gt511 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts256octetsto511octets = common dso_local global i32 0, align 4
@tx_stat_gt1023 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts512octetsto1023octets = common dso_local global i32 0, align 4
@tx_stat_gt1518 = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@tx_stat_gt2047 = common dso_local global i32 0, align 4
@tx_stat_mac_2047 = common dso_local global i32 0, align 4
@tx_stat_gt4095 = common dso_local global i32 0, align 4
@tx_stat_mac_4095 = common dso_local global i32 0, align 4
@tx_stat_gt9216 = common dso_local global i32 0, align 4
@tx_stat_mac_9216 = common dso_local global i32 0, align 4
@tx_stat_gt16383 = common dso_local global i32 0, align 4
@tx_stat_mac_16383 = common dso_local global i32 0, align 4
@tx_stat_gterr = common dso_local global i32 0, align 4
@tx_stat_dot3statsinternalmactransmiterrors = common dso_local global i32 0, align 4
@tx_stat_gtufl = common dso_local global i32 0, align 4
@tx_stat_mac_ufl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_bmac_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_bmac_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.host_port_stats*, align 8
  %4 = alloca %struct.bnx2x_eth_stats*, align 8
  %5 = alloca %struct.anon, align 4
  %6 = alloca %struct.bmac1_stats*, align 8
  %7 = alloca %struct.bmac2_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = load i32, i32* @port_stats, align 4
  %10 = call i8* @bnx2x_sp(%struct.bnx2x* %8, i32 %9)
  %11 = bitcast i8* %10 to %struct.host_port_stats*
  store %struct.host_port_stats* %11, %struct.host_port_stats** %3, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  store %struct.bnx2x_eth_stats* %13, %struct.bnx2x_eth_stats** %4, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %15 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %91

17:                                               ; preds = %1
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_stats, i32 0, i32 1), align 4
  %20 = call i8* @bnx2x_sp(%struct.bnx2x* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.bmac1_stats*
  store %struct.bmac1_stats* %21, %struct.bmac1_stats** %6, align 8
  %22 = load i32, i32* @rx_stat_grerb, align 4
  %23 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %24 = call i32 @UPDATE_STAT64(i32 %22, i32 %23)
  %25 = load i32, i32* @rx_stat_grfcs, align 4
  %26 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %27 = call i32 @UPDATE_STAT64(i32 %25, i32 %26)
  %28 = load i32, i32* @rx_stat_grund, align 4
  %29 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %30 = call i32 @UPDATE_STAT64(i32 %28, i32 %29)
  %31 = load i32, i32* @rx_stat_grovr, align 4
  %32 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %33 = call i32 @UPDATE_STAT64(i32 %31, i32 %32)
  %34 = load i32, i32* @rx_stat_grfrg, align 4
  %35 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %36 = call i32 @UPDATE_STAT64(i32 %34, i32 %35)
  %37 = load i32, i32* @rx_stat_grjbr, align 4
  %38 = load i32, i32* @rx_stat_etherstatsjabbers, align 4
  %39 = call i32 @UPDATE_STAT64(i32 %37, i32 %38)
  %40 = load i32, i32* @rx_stat_grxcf, align 4
  %41 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %42 = call i32 @UPDATE_STAT64(i32 %40, i32 %41)
  %43 = load i32, i32* @rx_stat_grxpf, align 4
  %44 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %45 = call i32 @UPDATE_STAT64(i32 %43, i32 %44)
  %46 = load i32, i32* @rx_stat_grxpf, align 4
  %47 = load i32, i32* @rx_stat_mac_xpf, align 4
  %48 = call i32 @UPDATE_STAT64(i32 %46, i32 %47)
  %49 = load i32, i32* @tx_stat_gtxpf, align 4
  %50 = load i32, i32* @tx_stat_outxoffsent, align 4
  %51 = call i32 @UPDATE_STAT64(i32 %49, i32 %50)
  %52 = load i32, i32* @tx_stat_gtxpf, align 4
  %53 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %54 = call i32 @UPDATE_STAT64(i32 %52, i32 %53)
  %55 = load i32, i32* @tx_stat_gt64, align 4
  %56 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %57 = call i32 @UPDATE_STAT64(i32 %55, i32 %56)
  %58 = load i32, i32* @tx_stat_gt127, align 4
  %59 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %60 = call i32 @UPDATE_STAT64(i32 %58, i32 %59)
  %61 = load i32, i32* @tx_stat_gt255, align 4
  %62 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %63 = call i32 @UPDATE_STAT64(i32 %61, i32 %62)
  %64 = load i32, i32* @tx_stat_gt511, align 4
  %65 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %66 = call i32 @UPDATE_STAT64(i32 %64, i32 %65)
  %67 = load i32, i32* @tx_stat_gt1023, align 4
  %68 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %69 = call i32 @UPDATE_STAT64(i32 %67, i32 %68)
  %70 = load i32, i32* @tx_stat_gt1518, align 4
  %71 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %72 = call i32 @UPDATE_STAT64(i32 %70, i32 %71)
  %73 = load i32, i32* @tx_stat_gt2047, align 4
  %74 = load i32, i32* @tx_stat_mac_2047, align 4
  %75 = call i32 @UPDATE_STAT64(i32 %73, i32 %74)
  %76 = load i32, i32* @tx_stat_gt4095, align 4
  %77 = load i32, i32* @tx_stat_mac_4095, align 4
  %78 = call i32 @UPDATE_STAT64(i32 %76, i32 %77)
  %79 = load i32, i32* @tx_stat_gt9216, align 4
  %80 = load i32, i32* @tx_stat_mac_9216, align 4
  %81 = call i32 @UPDATE_STAT64(i32 %79, i32 %80)
  %82 = load i32, i32* @tx_stat_gt16383, align 4
  %83 = load i32, i32* @tx_stat_mac_16383, align 4
  %84 = call i32 @UPDATE_STAT64(i32 %82, i32 %83)
  %85 = load i32, i32* @tx_stat_gterr, align 4
  %86 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %87 = call i32 @UPDATE_STAT64(i32 %85, i32 %86)
  %88 = load i32, i32* @tx_stat_gtufl, align 4
  %89 = load i32, i32* @tx_stat_mac_ufl, align 4
  %90 = call i32 @UPDATE_STAT64(i32 %88, i32 %89)
  br label %185

91:                                               ; preds = %1
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mac_stats, i32 0, i32 0), align 4
  %94 = call i8* @bnx2x_sp(%struct.bnx2x* %92, i32 %93)
  %95 = bitcast i8* %94 to %struct.bmac2_stats*
  store %struct.bmac2_stats* %95, %struct.bmac2_stats** %7, align 8
  %96 = load i32, i32* @rx_stat_grerb, align 4
  %97 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %98 = call i32 @UPDATE_STAT64(i32 %96, i32 %97)
  %99 = load i32, i32* @rx_stat_grfcs, align 4
  %100 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %101 = call i32 @UPDATE_STAT64(i32 %99, i32 %100)
  %102 = load i32, i32* @rx_stat_grund, align 4
  %103 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %104 = call i32 @UPDATE_STAT64(i32 %102, i32 %103)
  %105 = load i32, i32* @rx_stat_grovr, align 4
  %106 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %107 = call i32 @UPDATE_STAT64(i32 %105, i32 %106)
  %108 = load i32, i32* @rx_stat_grfrg, align 4
  %109 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %110 = call i32 @UPDATE_STAT64(i32 %108, i32 %109)
  %111 = load i32, i32* @rx_stat_grjbr, align 4
  %112 = load i32, i32* @rx_stat_etherstatsjabbers, align 4
  %113 = call i32 @UPDATE_STAT64(i32 %111, i32 %112)
  %114 = load i32, i32* @rx_stat_grxcf, align 4
  %115 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %116 = call i32 @UPDATE_STAT64(i32 %114, i32 %115)
  %117 = load i32, i32* @rx_stat_grxpf, align 4
  %118 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %119 = call i32 @UPDATE_STAT64(i32 %117, i32 %118)
  %120 = load i32, i32* @rx_stat_grxpf, align 4
  %121 = load i32, i32* @rx_stat_mac_xpf, align 4
  %122 = call i32 @UPDATE_STAT64(i32 %120, i32 %121)
  %123 = load i32, i32* @tx_stat_gtxpf, align 4
  %124 = load i32, i32* @tx_stat_outxoffsent, align 4
  %125 = call i32 @UPDATE_STAT64(i32 %123, i32 %124)
  %126 = load i32, i32* @tx_stat_gtxpf, align 4
  %127 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %128 = call i32 @UPDATE_STAT64(i32 %126, i32 %127)
  %129 = load i32, i32* @tx_stat_gt64, align 4
  %130 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %131 = call i32 @UPDATE_STAT64(i32 %129, i32 %130)
  %132 = load i32, i32* @tx_stat_gt127, align 4
  %133 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %134 = call i32 @UPDATE_STAT64(i32 %132, i32 %133)
  %135 = load i32, i32* @tx_stat_gt255, align 4
  %136 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %137 = call i32 @UPDATE_STAT64(i32 %135, i32 %136)
  %138 = load i32, i32* @tx_stat_gt511, align 4
  %139 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %140 = call i32 @UPDATE_STAT64(i32 %138, i32 %139)
  %141 = load i32, i32* @tx_stat_gt1023, align 4
  %142 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %143 = call i32 @UPDATE_STAT64(i32 %141, i32 %142)
  %144 = load i32, i32* @tx_stat_gt1518, align 4
  %145 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %146 = call i32 @UPDATE_STAT64(i32 %144, i32 %145)
  %147 = load i32, i32* @tx_stat_gt2047, align 4
  %148 = load i32, i32* @tx_stat_mac_2047, align 4
  %149 = call i32 @UPDATE_STAT64(i32 %147, i32 %148)
  %150 = load i32, i32* @tx_stat_gt4095, align 4
  %151 = load i32, i32* @tx_stat_mac_4095, align 4
  %152 = call i32 @UPDATE_STAT64(i32 %150, i32 %151)
  %153 = load i32, i32* @tx_stat_gt9216, align 4
  %154 = load i32, i32* @tx_stat_mac_9216, align 4
  %155 = call i32 @UPDATE_STAT64(i32 %153, i32 %154)
  %156 = load i32, i32* @tx_stat_gt16383, align 4
  %157 = load i32, i32* @tx_stat_mac_16383, align 4
  %158 = call i32 @UPDATE_STAT64(i32 %156, i32 %157)
  %159 = load i32, i32* @tx_stat_gterr, align 4
  %160 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %161 = call i32 @UPDATE_STAT64(i32 %159, i32 %160)
  %162 = load i32, i32* @tx_stat_gtufl, align 4
  %163 = load i32, i32* @tx_stat_mac_ufl, align 4
  %164 = call i32 @UPDATE_STAT64(i32 %162, i32 %163)
  %165 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %166 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %169 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %171 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %174 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %176 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %179 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.bmac2_stats*, %struct.bmac2_stats** %7, align 8
  %181 = getelementptr inbounds %struct.bmac2_stats, %struct.bmac2_stats* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %184 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %91, %17
  %186 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %187 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %186, i32 0, i32 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %193 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %195 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %194, i32 0, i32 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %201 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 4
  %202 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %203 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %202, i32 0, i32 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 1
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %209 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 4
  %210 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %211 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %210, i32 0, i32 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %217 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %219 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %222 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  %223 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %224 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %227 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %229 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %232 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %234 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %237 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  ret void
}

declare dso_local i8* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @UPDATE_STAT64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
