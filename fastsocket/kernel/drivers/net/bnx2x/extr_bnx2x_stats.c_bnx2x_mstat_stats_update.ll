; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_mstat_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_mstat_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x = type { %struct.bnx2x_eth_stats }
%struct.bnx2x_eth_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.host_port_stats = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mstat_stats = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@port_stats = common dso_local global i32 0, align 4
@mac_stats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@stats_rx = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@rx_stat_ifhcinbadoctets = common dso_local global i32 0, align 4
@rx_stat_dot3statsfcserrors = common dso_local global i32 0, align 4
@rx_stat_etherstatsundersizepkts = common dso_local global i32 0, align 4
@rx_stat_dot3statsframestoolong = common dso_local global i32 0, align 4
@rx_stat_etherstatsfragments = common dso_local global i32 0, align 4
@rx_stat_maccontrolframesreceived = common dso_local global i32 0, align 4
@rx_stat_xoffstateentered = common dso_local global i32 0, align 4
@rx_stat_mac_xpf = common dso_local global i32 0, align 4
@stats_tx = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@tx_stat_outxoffsent = common dso_local global i32 0, align 4
@tx_stat_flowcontroldone = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts64octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts65octetsto127octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts128octetsto255octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts256octetsto511octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts512octetsto1023octets = common dso_local global i32 0, align 4
@tx_stat_etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@tx_stat_mac_2047 = common dso_local global i32 0, align 4
@tx_stat_mac_4095 = common dso_local global i32 0, align 4
@tx_stat_mac_9216 = common dso_local global i32 0, align 4
@tx_stat_mac_16383 = common dso_local global i32 0, align 4
@tx_stat_dot3statsinternalmactransmiterrors = common dso_local global i32 0, align 4
@tx_stat_mac_ufl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_mstat_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_mstat_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.host_port_stats*, align 8
  %4 = alloca %struct.bnx2x_eth_stats*, align 8
  %5 = alloca %struct.mstat_stats*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = load i32, i32* @port_stats, align 4
  %8 = call i8* @bnx2x_sp(%struct.bnx2x* %6, i32 %7)
  %9 = bitcast i8* %8 to %struct.host_port_stats*
  store %struct.host_port_stats* %9, %struct.host_port_stats** %3, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  store %struct.bnx2x_eth_stats* %11, %struct.bnx2x_eth_stats** %4, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @mac_stats, i32 0, i32 0), align 4
  %14 = call i8* @bnx2x_sp(%struct.bnx2x* %12, i32 %13)
  %15 = bitcast i8* %14 to %struct.mstat_stats*
  store %struct.mstat_stats* %15, %struct.mstat_stats** %5, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 6), align 4
  %17 = load i32, i32* @rx_stat_ifhcinbadoctets, align 4
  %18 = call i32 @ADD_STAT64(i32 %16, i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 5), align 4
  %20 = load i32, i32* @rx_stat_dot3statsfcserrors, align 4
  %21 = call i32 @ADD_STAT64(i32 %19, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 4), align 4
  %23 = load i32, i32* @rx_stat_etherstatsundersizepkts, align 4
  %24 = call i32 @ADD_STAT64(i32 %22, i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 3), align 4
  %26 = load i32, i32* @rx_stat_dot3statsframestoolong, align 4
  %27 = call i32 @ADD_STAT64(i32 %25, i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 2), align 4
  %29 = load i32, i32* @rx_stat_etherstatsfragments, align 4
  %30 = call i32 @ADD_STAT64(i32 %28, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 1), align 4
  %32 = load i32, i32* @rx_stat_maccontrolframesreceived, align 4
  %33 = call i32 @ADD_STAT64(i32 %31, i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 0), align 4
  %35 = load i32, i32* @rx_stat_xoffstateentered, align 4
  %36 = call i32 @ADD_STAT64(i32 %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @stats_rx, i32 0, i32 0), align 4
  %38 = load i32, i32* @rx_stat_mac_xpf, align 4
  %39 = call i32 @ADD_STAT64(i32 %37, i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 12), align 4
  %41 = load i32, i32* @tx_stat_outxoffsent, align 4
  %42 = call i32 @ADD_STAT64(i32 %40, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 12), align 4
  %44 = load i32, i32* @tx_stat_flowcontroldone, align 4
  %45 = call i32 @ADD_STAT64(i32 %43, i32 %44)
  %46 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %47 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mstat_stats*, %struct.mstat_stats** %5, align 8
  %50 = getelementptr inbounds %struct.mstat_stats, %struct.mstat_stats* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %54 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mstat_stats*, %struct.mstat_stats** %5, align 8
  %57 = getelementptr inbounds %struct.mstat_stats, %struct.mstat_stats* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ADD_64(i32 %48, i32 %52, i32 %55, i32 %59)
  %61 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %62 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mstat_stats*, %struct.mstat_stats** %5, align 8
  %65 = getelementptr inbounds %struct.mstat_stats, %struct.mstat_stats* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %69 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mstat_stats*, %struct.mstat_stats** %5, align 8
  %72 = getelementptr inbounds %struct.mstat_stats, %struct.mstat_stats* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ADD_64(i32 %63, i32 %67, i32 %70, i32 %74)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 11), align 4
  %77 = load i32, i32* @tx_stat_etherstatspkts64octets, align 4
  %78 = call i32 @ADD_STAT64(i32 %76, i32 %77)
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 10), align 4
  %80 = load i32, i32* @tx_stat_etherstatspkts65octetsto127octets, align 4
  %81 = call i32 @ADD_STAT64(i32 %79, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 9), align 4
  %83 = load i32, i32* @tx_stat_etherstatspkts128octetsto255octets, align 4
  %84 = call i32 @ADD_STAT64(i32 %82, i32 %83)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 8), align 4
  %86 = load i32, i32* @tx_stat_etherstatspkts256octetsto511octets, align 4
  %87 = call i32 @ADD_STAT64(i32 %85, i32 %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 7), align 4
  %89 = load i32, i32* @tx_stat_etherstatspkts512octetsto1023octets, align 4
  %90 = call i32 @ADD_STAT64(i32 %88, i32 %89)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 6), align 4
  %92 = load i32, i32* @tx_stat_etherstatspkts1024octetsto1522octets, align 4
  %93 = call i32 @ADD_STAT64(i32 %91, i32 %92)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 5), align 4
  %95 = load i32, i32* @tx_stat_mac_2047, align 4
  %96 = call i32 @ADD_STAT64(i32 %94, i32 %95)
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 4), align 4
  %98 = load i32, i32* @tx_stat_mac_4095, align 4
  %99 = call i32 @ADD_STAT64(i32 %97, i32 %98)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 3), align 4
  %101 = load i32, i32* @tx_stat_mac_9216, align 4
  %102 = call i32 @ADD_STAT64(i32 %100, i32 %101)
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 2), align 4
  %104 = load i32, i32* @tx_stat_mac_16383, align 4
  %105 = call i32 @ADD_STAT64(i32 %103, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 1), align 4
  %107 = load i32, i32* @tx_stat_dot3statsinternalmactransmiterrors, align 4
  %108 = call i32 @ADD_STAT64(i32 %106, i32 %107)
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stats_tx, i32 0, i32 0), align 4
  %110 = load i32, i32* @tx_stat_mac_ufl, align 4
  %111 = call i32 @ADD_STAT64(i32 %109, i32 %110)
  %112 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %113 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %112, i32 0, i32 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %119 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 4
  %120 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %121 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %120, i32 0, i32 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 12
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %127 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 4
  %128 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %129 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %128, i32 0, i32 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %135 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 4
  %136 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %137 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %136, i32 0, i32 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %143 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 4
  %144 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %145 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %148 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %147, i32 0, i32 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %154 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %157 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %156, i32 0, i32 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ADD_64(i32 %146, i32 %152, i32 %155, i32 %161)
  %163 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %164 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %167 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %166, i32 0, i32 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %173 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %176 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %175, i32 0, i32 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ADD_64(i32 %165, i32 %171, i32 %174, i32 %180)
  %182 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %183 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %186 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %185, i32 0, i32 4
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %192 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %195 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %194, i32 0, i32 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ADD_64(i32 %184, i32 %190, i32 %193, i32 %199)
  %201 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %202 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %201, i32 0, i32 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %208 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 4
  %209 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %210 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %209, i32 0, i32 4
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 1
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %216 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 4
  %217 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %218 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %217, i32 0, i32 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %224 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %226 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %225, i32 0, i32 4
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %232 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  %233 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %234 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %237 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %239 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %242 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %244 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %247 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.host_port_stats*, %struct.host_port_stats** %3, align 8
  %249 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %4, align 8
  %252 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 4
  ret void
}

declare dso_local i8* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @ADD_STAT64(i32, i32) #1

declare dso_local i32 @ADD_64(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
