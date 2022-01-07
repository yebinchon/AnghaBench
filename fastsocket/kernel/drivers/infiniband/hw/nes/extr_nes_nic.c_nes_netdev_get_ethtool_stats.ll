; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.nes_vnic = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.nes_device*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.nes_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nes_adapter*, i32, i32 }
%struct.nes_adapter = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NES_ETHTOOL_STAT_COUNT = common dso_local global i32 0, align 4
@NES_IDX_MAC_TX_PAUSE_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_PAUSE_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_PORT_RX_DISCARDS = common dso_local global i64 0, align 8
@NES_IDX_PORT_TX_DISCARDS = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_SHORT_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_OVERSIZED_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_JABBER_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_LENGTH_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_CRC_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_TX_ERRORS = common dso_local global i64 0, align 8
@NES_MAX_PORT_COUNT = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_DISCARD = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI = common dso_local global i64 0, align 8
@NES_IDX_IPV4_TCP_REXMITS = common dso_local global i64 0, align 8
@mh_detected = common dso_local global i32 0, align 4
@mh_pauses_sent = common dso_local global i32 0, align 4
@cm_connects = common dso_local global i32 0, align 4
@cm_accepts = common dso_local global i32 0, align 4
@cm_disconnects = common dso_local global i32 0, align 4
@cm_connecteds = common dso_local global i32 0, align 4
@cm_connect_reqs = common dso_local global i32 0, align 4
@cm_rejects = common dso_local global i32 0, align 4
@mod_qp_timouts = common dso_local global i32 0, align 4
@qps_created = common dso_local global i32 0, align 4
@sw_qps_destroyed = common dso_local global i32 0, align 4
@qps_destroyed = common dso_local global i32 0, align 4
@cm_closes = common dso_local global i32 0, align 4
@cm_packets_sent = common dso_local global i32 0, align 4
@cm_packets_bounced = common dso_local global i32 0, align 4
@cm_packets_created = common dso_local global i32 0, align 4
@cm_packets_received = common dso_local global i32 0, align 4
@cm_packets_dropped = common dso_local global i32 0, align 4
@cm_packets_retrans = common dso_local global i32 0, align 4
@cm_listens_created = common dso_local global i32 0, align 4
@cm_listens_destroyed = common dso_local global i32 0, align 4
@cm_backlog_drops = common dso_local global i32 0, align 4
@cm_loopbacks = common dso_local global i32 0, align 4
@cm_nodes_created = common dso_local global i32 0, align 4
@cm_nodes_destroyed = common dso_local global i32 0, align 4
@cm_accel_dropped_pkts = common dso_local global i32 0, align 4
@cm_resets_recvd = common dso_local global i32 0, align 4
@int_mod_timer_init = common dso_local global i32 0, align 4
@pau_qps_created = common dso_local global i32 0, align 4
@pau_qps_destroyed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @nes_netdev_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_netdev_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nes_vnic*, align 8
  %9 = alloca %struct.nes_device*, align 8
  %10 = alloca %struct.nes_adapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %14)
  store %struct.nes_vnic* %15, %struct.nes_vnic** %8, align 8
  %16 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %17 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %16, i32 0, i32 13
  %18 = load %struct.nes_device*, %struct.nes_device** %17, align 8
  store %struct.nes_device* %18, %struct.nes_device** %9, align 8
  %19 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %20 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %19, i32 0, i32 11
  %21 = load %struct.nes_adapter*, %struct.nes_adapter** %20, align 8
  store %struct.nes_adapter* %21, %struct.nes_adapter** %10, align 8
  store i64 0, i64* %13, align 8
  %22 = load i32, i32* @NES_ETHTOOL_STAT_COUNT, align 4
  %23 = load %struct.ethtool_stats*, %struct.ethtool_stats** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_stats, %struct.ethtool_stats* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %26 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %25, i32 0, i32 13
  %27 = load %struct.nes_device*, %struct.nes_device** %26, align 8
  %28 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %34 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %13, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %13, align 8
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %41 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %48 = load i64, i64* @NES_IDX_MAC_TX_PAUSE_FRAMES, align 8
  %49 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %50 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %49, i32 0, i32 13
  %51 = load %struct.nes_device*, %struct.nes_device** %50, align 8
  %52 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 512
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %48, %55
  %57 = call i64 @nes_read_indexed(%struct.nes_device* %47, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %60 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %59, i32 0, i32 13
  %61 = load %struct.nes_device*, %struct.nes_device** %60, align 8
  %62 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, %58
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %68 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %67, i32 0, i32 13
  %69 = load %struct.nes_device*, %struct.nes_device** %68, align 8
  %70 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %77 = load i64, i64* @NES_IDX_MAC_RX_PAUSE_FRAMES, align 8
  %78 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %79 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %78, i32 0, i32 13
  %80 = load %struct.nes_device*, %struct.nes_device** %79, align 8
  %81 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 512
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %77, %84
  %86 = call i64 @nes_read_indexed(%struct.nes_device* %76, i64 %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %89 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %88, i32 0, i32 13
  %90 = load %struct.nes_device*, %struct.nes_device** %89, align 8
  %91 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, %87
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  %96 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %97 = load i64, i64* @NES_IDX_PORT_RX_DISCARDS, align 8
  %98 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %99 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %98, i32 0, i32 13
  %100 = load %struct.nes_device*, %struct.nes_device** %99, align 8
  %101 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 64
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %97, %104
  %106 = call i64 @nes_read_indexed(%struct.nes_device* %96, i64 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %109 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %108, i32 0, i32 13
  %110 = load %struct.nes_device*, %struct.nes_device** %109, align 8
  %111 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, %107
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %118 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %116
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 4
  %124 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %125 = load i64, i64* @NES_IDX_PORT_TX_DISCARDS, align 8
  %126 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %127 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %126, i32 0, i32 13
  %128 = load %struct.nes_device*, %struct.nes_device** %127, align 8
  %129 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %130, 64
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %125, %132
  %134 = call i64 @nes_read_indexed(%struct.nes_device* %124, i64 %133)
  store i64 %134, i64* %12, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %137 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %136, i32 0, i32 13
  %138 = load %struct.nes_device*, %struct.nes_device** %137, align 8
  %139 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %135
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %146 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %145, i32 0, i32 14
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %144
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %153 = load i64, i64* @NES_IDX_MAC_RX_SHORT_FRAMES, align 8
  %154 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %155 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %154, i32 0, i32 13
  %156 = load %struct.nes_device*, %struct.nes_device** %155, align 8
  %157 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 512
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %153, %160
  %162 = call i64 @nes_read_indexed(%struct.nes_device* %152, i64 %161)
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %165 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %164, i32 0, i32 14
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, %163
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 4
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %173 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %172, i32 0, i32 13
  %174 = load %struct.nes_device*, %struct.nes_device** %173, align 8
  %175 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %174, i32 0, i32 12
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, %171
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %182 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %181, i32 0, i32 13
  %183 = load %struct.nes_device*, %struct.nes_device** %182, align 8
  %184 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, %180
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %184, align 4
  %189 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %190 = load i64, i64* @NES_IDX_MAC_RX_OVERSIZED_FRAMES, align 8
  %191 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %192 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %191, i32 0, i32 13
  %193 = load %struct.nes_device*, %struct.nes_device** %192, align 8
  %194 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = mul nsw i32 %195, 512
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %190, %197
  %199 = call i64 @nes_read_indexed(%struct.nes_device* %189, i64 %198)
  store i64 %199, i64* %12, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %202 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %201, i32 0, i32 14
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %205, %200
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %203, align 4
  %208 = load i64, i64* %12, align 8
  %209 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %210 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %209, i32 0, i32 13
  %211 = load %struct.nes_device*, %struct.nes_device** %210, align 8
  %212 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %211, i32 0, i32 12
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = add i64 %214, %208
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 8
  %217 = load i64, i64* %12, align 8
  %218 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %219 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %218, i32 0, i32 13
  %220 = load %struct.nes_device*, %struct.nes_device** %219, align 8
  %221 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = add i64 %223, %217
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %221, align 8
  %226 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %227 = load i64, i64* @NES_IDX_MAC_RX_JABBER_FRAMES, align 8
  %228 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %229 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %228, i32 0, i32 13
  %230 = load %struct.nes_device*, %struct.nes_device** %229, align 8
  %231 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %232, 512
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %227, %234
  %236 = call i64 @nes_read_indexed(%struct.nes_device* %226, i64 %235)
  store i64 %236, i64* %12, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %239 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %238, i32 0, i32 14
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = add i64 %242, %237
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 4
  %245 = load i64, i64* %12, align 8
  %246 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %247 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %246, i32 0, i32 13
  %248 = load %struct.nes_device*, %struct.nes_device** %247, align 8
  %249 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %248, i32 0, i32 12
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = add i64 %251, %245
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %249, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %256 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %255, i32 0, i32 13
  %257 = load %struct.nes_device*, %struct.nes_device** %256, align 8
  %258 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add i64 %260, %254
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %264 = load i64, i64* @NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES, align 8
  %265 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %266 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %265, i32 0, i32 13
  %267 = load %struct.nes_device*, %struct.nes_device** %266, align 8
  %268 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %269, 512
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %264, %271
  %273 = call i64 @nes_read_indexed(%struct.nes_device* %263, i64 %272)
  store i64 %273, i64* %12, align 8
  %274 = load i64, i64* %12, align 8
  %275 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %276 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %275, i32 0, i32 14
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 %279, %274
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %277, align 4
  %282 = load i64, i64* %12, align 8
  %283 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %284 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %283, i32 0, i32 13
  %285 = load %struct.nes_device*, %struct.nes_device** %284, align 8
  %286 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %285, i32 0, i32 12
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = add i64 %288, %282
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 8
  %291 = load i64, i64* %12, align 8
  %292 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %293 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %292, i32 0, i32 13
  %294 = load %struct.nes_device*, %struct.nes_device** %293, align 8
  %295 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %294, i32 0, i32 8
  %296 = load i32, i32* %295, align 8
  %297 = sext i32 %296 to i64
  %298 = add i64 %297, %291
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %295, align 8
  %300 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %301 = load i64, i64* @NES_IDX_MAC_RX_LENGTH_ERR_FRAMES, align 8
  %302 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %303 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %302, i32 0, i32 13
  %304 = load %struct.nes_device*, %struct.nes_device** %303, align 8
  %305 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = mul nsw i32 %306, 512
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %301, %308
  %310 = call i64 @nes_read_indexed(%struct.nes_device* %300, i64 %309)
  store i64 %310, i64* %12, align 8
  %311 = load i64, i64* %12, align 8
  %312 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %313 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %312, i32 0, i32 14
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = add i64 %316, %311
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %314, align 8
  %319 = load i64, i64* %12, align 8
  %320 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %321 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %320, i32 0, i32 13
  %322 = load %struct.nes_device*, %struct.nes_device** %321, align 8
  %323 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %322, i32 0, i32 12
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = add i64 %325, %319
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 8
  %328 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %329 = load i64, i64* @NES_IDX_MAC_RX_CRC_ERR_FRAMES, align 8
  %330 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %331 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %330, i32 0, i32 13
  %332 = load %struct.nes_device*, %struct.nes_device** %331, align 8
  %333 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %334, 512
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %329, %336
  %338 = call i64 @nes_read_indexed(%struct.nes_device* %328, i64 %337)
  store i64 %338, i64* %12, align 8
  %339 = load i64, i64* %12, align 8
  %340 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %341 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %340, i32 0, i32 13
  %342 = load %struct.nes_device*, %struct.nes_device** %341, align 8
  %343 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %342, i32 0, i32 12
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = add i64 %345, %339
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %343, align 8
  %348 = load i64, i64* %12, align 8
  %349 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %350 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %349, i32 0, i32 13
  %351 = load %struct.nes_device*, %struct.nes_device** %350, align 8
  %352 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = add i64 %354, %348
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 4
  %357 = load i64, i64* %12, align 8
  %358 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %359 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %358, i32 0, i32 14
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 7
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = add i64 %362, %357
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %360, align 4
  %365 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %366 = load i64, i64* @NES_IDX_MAC_TX_ERRORS, align 8
  %367 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %368 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %367, i32 0, i32 13
  %369 = load %struct.nes_device*, %struct.nes_device** %368, align 8
  %370 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = mul nsw i32 %371, 512
  %373 = sext i32 %372 to i64
  %374 = add nsw i64 %366, %373
  %375 = call i64 @nes_read_indexed(%struct.nes_device* %365, i64 %374)
  store i64 %375, i64* %12, align 8
  %376 = load i64, i64* %12, align 8
  %377 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %378 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %377, i32 0, i32 13
  %379 = load %struct.nes_device*, %struct.nes_device** %378, align 8
  %380 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %379, i32 0, i32 10
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = add i64 %382, %376
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %380, align 8
  %385 = load i64, i64* %12, align 8
  %386 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %387 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %386, i32 0, i32 14
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 6
  %389 = load i32, i32* %388, align 8
  %390 = sext i32 %389 to i64
  %391 = add i64 %390, %385
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 8
  store i64 0, i64* %11, align 8
  br label %393

393:                                              ; preds = %613, %3
  %394 = load i64, i64* %11, align 8
  %395 = load i64, i64* @NES_MAX_PORT_COUNT, align 8
  %396 = icmp ult i64 %394, %395
  br i1 %396, label %397, label %616

397:                                              ; preds = %393
  %398 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %399 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %398, i32 0, i32 2
  %400 = load i32*, i32** %399, align 8
  %401 = load i64, i64* %11, align 8
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = icmp eq i32 %403, 15
  br i1 %404, label %405, label %406

405:                                              ; preds = %397
  br label %616

406:                                              ; preds = %397
  %407 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %408 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_DISCARD, align 8
  %409 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %410 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %409, i32 0, i32 2
  %411 = load i32*, i32** %410, align 8
  %412 = load i64, i64* %11, align 8
  %413 = getelementptr inbounds i32, i32* %411, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 %414, 512
  %416 = sext i32 %415 to i64
  %417 = add nsw i64 %408, %416
  %418 = call i64 @nes_read_indexed(%struct.nes_device* %407, i64 %417)
  store i64 %418, i64* %12, align 8
  %419 = load i64, i64* %12, align 8
  %420 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %421 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %420, i32 0, i32 14
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  %425 = add i64 %424, %419
  %426 = trunc i64 %425 to i32
  store i32 %426, i32* %422, align 4
  %427 = load i64, i64* %12, align 8
  %428 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %429 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 8
  %431 = sext i32 %430 to i64
  %432 = add i64 %431, %427
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %429, align 8
  %434 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %435 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO, align 8
  %436 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %437 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = load i64, i64* %11, align 8
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = mul nsw i32 %441, 512
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %435, %443
  %445 = call i64 @nes_read_indexed(%struct.nes_device* %434, i64 %444)
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %7, align 4
  %447 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %448 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI, align 8
  %449 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %450 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %449, i32 0, i32 2
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* %11, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = mul nsw i32 %454, 512
  %456 = sext i32 %455 to i64
  %457 = add nsw i64 %448, %456
  %458 = call i64 @nes_read_indexed(%struct.nes_device* %447, i64 %457)
  %459 = trunc i64 %458 to i32
  %460 = shl i32 %459, 32
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %461, %460
  store i32 %462, i32* %7, align 4
  %463 = load i32, i32* %7, align 4
  %464 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %465 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %464, i32 0, i32 4
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, %463
  store i32 %467, i32* %465, align 4
  %468 = load i32, i32* %7, align 4
  %469 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %470 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %469, i32 0, i32 14
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 8
  %473 = add nsw i32 %472, %468
  store i32 %473, i32* %471, align 8
  %474 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %475 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO, align 8
  %476 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %477 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %476, i32 0, i32 2
  %478 = load i32*, i32** %477, align 8
  %479 = load i64, i64* %11, align 8
  %480 = getelementptr inbounds i32, i32* %478, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = mul nsw i32 %481, 512
  %483 = sext i32 %482 to i64
  %484 = add nsw i64 %475, %483
  %485 = call i64 @nes_read_indexed(%struct.nes_device* %474, i64 %484)
  %486 = trunc i64 %485 to i32
  store i32 %486, i32* %7, align 4
  %487 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %488 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI, align 8
  %489 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %490 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %489, i32 0, i32 2
  %491 = load i32*, i32** %490, align 8
  %492 = load i64, i64* %11, align 8
  %493 = getelementptr inbounds i32, i32* %491, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = mul nsw i32 %494, 512
  %496 = sext i32 %495 to i64
  %497 = add nsw i64 %488, %496
  %498 = call i64 @nes_read_indexed(%struct.nes_device* %487, i64 %497)
  %499 = trunc i64 %498 to i32
  %500 = shl i32 %499, 32
  %501 = load i32, i32* %7, align 4
  %502 = add nsw i32 %501, %500
  store i32 %502, i32* %7, align 4
  %503 = load i32, i32* %7, align 4
  %504 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %505 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %504, i32 0, i32 5
  %506 = load i32, i32* %505, align 8
  %507 = add nsw i32 %506, %503
  store i32 %507, i32* %505, align 8
  %508 = load i32, i32* %7, align 4
  %509 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %510 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %509, i32 0, i32 14
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = add nsw i32 %512, %508
  store i32 %513, i32* %511, align 4
  %514 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %515 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO, align 8
  %516 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %517 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %516, i32 0, i32 2
  %518 = load i32*, i32** %517, align 8
  %519 = load i64, i64* %11, align 8
  %520 = getelementptr inbounds i32, i32* %518, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = mul nsw i32 %521, 512
  %523 = sext i32 %522 to i64
  %524 = add nsw i64 %515, %523
  %525 = call i64 @nes_read_indexed(%struct.nes_device* %514, i64 %524)
  %526 = trunc i64 %525 to i32
  store i32 %526, i32* %7, align 4
  %527 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %528 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI, align 8
  %529 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %530 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %529, i32 0, i32 2
  %531 = load i32*, i32** %530, align 8
  %532 = load i64, i64* %11, align 8
  %533 = getelementptr inbounds i32, i32* %531, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = mul nsw i32 %534, 512
  %536 = sext i32 %535 to i64
  %537 = add nsw i64 %528, %536
  %538 = call i64 @nes_read_indexed(%struct.nes_device* %527, i64 %537)
  %539 = trunc i64 %538 to i32
  %540 = shl i32 %539, 32
  %541 = load i32, i32* %7, align 4
  %542 = add nsw i32 %541, %540
  store i32 %542, i32* %7, align 4
  %543 = load i32, i32* %7, align 4
  %544 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %545 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 4
  %547 = add nsw i32 %546, %543
  store i32 %547, i32* %545, align 4
  %548 = load i32, i32* %7, align 4
  %549 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %550 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %549, i32 0, i32 14
  %551 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 8
  %553 = add nsw i32 %552, %548
  store i32 %553, i32* %551, align 8
  %554 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %555 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO, align 8
  %556 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %557 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %556, i32 0, i32 2
  %558 = load i32*, i32** %557, align 8
  %559 = load i64, i64* %11, align 8
  %560 = getelementptr inbounds i32, i32* %558, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = mul nsw i32 %561, 512
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %555, %563
  %565 = call i64 @nes_read_indexed(%struct.nes_device* %554, i64 %564)
  %566 = trunc i64 %565 to i32
  store i32 %566, i32* %7, align 4
  %567 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %568 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI, align 8
  %569 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %570 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %569, i32 0, i32 2
  %571 = load i32*, i32** %570, align 8
  %572 = load i64, i64* %11, align 8
  %573 = getelementptr inbounds i32, i32* %571, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = mul nsw i32 %574, 512
  %576 = sext i32 %575 to i64
  %577 = add nsw i64 %568, %576
  %578 = call i64 @nes_read_indexed(%struct.nes_device* %567, i64 %577)
  %579 = trunc i64 %578 to i32
  %580 = shl i32 %579, 32
  %581 = load i32, i32* %7, align 4
  %582 = add nsw i32 %581, %580
  store i32 %582, i32* %7, align 4
  %583 = load i32, i32* %7, align 4
  %584 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %585 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %584, i32 0, i32 7
  %586 = load i32, i32* %585, align 8
  %587 = add nsw i32 %586, %583
  store i32 %587, i32* %585, align 8
  %588 = load i32, i32* %7, align 4
  %589 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %590 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %589, i32 0, i32 14
  %591 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = add nsw i32 %592, %588
  store i32 %593, i32* %591, align 4
  %594 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %595 = load i64, i64* @NES_IDX_IPV4_TCP_REXMITS, align 8
  %596 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %597 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %596, i32 0, i32 2
  %598 = load i32*, i32** %597, align 8
  %599 = load i64, i64* %11, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = mul nsw i32 %601, 512
  %603 = sext i32 %602 to i64
  %604 = add nsw i64 %595, %603
  %605 = call i64 @nes_read_indexed(%struct.nes_device* %594, i64 %604)
  store i64 %605, i64* %12, align 8
  %606 = load i64, i64* %12, align 8
  %607 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %608 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %607, i32 0, i32 8
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  %611 = add i64 %610, %606
  %612 = trunc i64 %611 to i32
  store i32 %612, i32* %608, align 4
  br label %613

613:                                              ; preds = %406
  %614 = load i64, i64* %11, align 8
  %615 = add i64 %614, 1
  store i64 %615, i64* %11, align 8
  br label %393

616:                                              ; preds = %405, %393
  %617 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %618 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %617, i32 0, i32 13
  %619 = load %struct.nes_device*, %struct.nes_device** %618, align 8
  %620 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 4
  %622 = load i32*, i32** %6, align 8
  %623 = load i64, i64* %13, align 8
  %624 = add i64 %623, 1
  store i64 %624, i64* %13, align 8
  %625 = getelementptr inbounds i32, i32* %622, i64 %624
  store i32 %621, i32* %625, align 4
  %626 = load %struct.nes_device*, %struct.nes_device** %9, align 8
  %627 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %626, i32 0, i32 11
  %628 = load %struct.nes_adapter*, %struct.nes_adapter** %627, align 8
  %629 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = load i32*, i32** %6, align 8
  %632 = load i64, i64* %13, align 8
  %633 = add i64 %632, 1
  store i64 %633, i64* %13, align 8
  %634 = getelementptr inbounds i32, i32* %631, i64 %633
  store i32 %630, i32* %634, align 4
  %635 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %636 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %635, i32 0, i32 9
  %637 = load i32, i32* %636, align 8
  %638 = load i32*, i32** %6, align 8
  %639 = load i64, i64* %13, align 8
  %640 = add i64 %639, 1
  store i64 %640, i64* %13, align 8
  %641 = getelementptr inbounds i32, i32* %638, i64 %640
  store i32 %637, i32* %641, align 4
  %642 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %643 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %642, i32 0, i32 10
  %644 = load i32, i32* %643, align 4
  %645 = load i32*, i32** %6, align 8
  %646 = load i64, i64* %13, align 8
  %647 = add i64 %646, 1
  store i64 %647, i64* %13, align 8
  %648 = getelementptr inbounds i32, i32* %645, i64 %647
  store i32 %644, i32* %648, align 4
  %649 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %650 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %649, i32 0, i32 11
  %651 = load i32, i32* %650, align 8
  %652 = load i32*, i32** %6, align 8
  %653 = load i64, i64* %13, align 8
  %654 = add i64 %653, 1
  store i64 %654, i64* %13, align 8
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  store i32 %651, i32* %655, align 4
  %656 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %657 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %656, i32 0, i32 13
  %658 = load %struct.nes_device*, %struct.nes_device** %657, align 8
  %659 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %658, i32 0, i32 8
  %660 = load i32, i32* %659, align 8
  %661 = load i32*, i32** %6, align 8
  %662 = load i64, i64* %13, align 8
  %663 = add i64 %662, 1
  store i64 %663, i64* %13, align 8
  %664 = getelementptr inbounds i32, i32* %661, i64 %663
  store i32 %660, i32* %664, align 4
  %665 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %666 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %665, i32 0, i32 13
  %667 = load %struct.nes_device*, %struct.nes_device** %666, align 8
  %668 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %667, i32 0, i32 7
  %669 = load i32, i32* %668, align 4
  %670 = load i32*, i32** %6, align 8
  %671 = load i64, i64* %13, align 8
  %672 = add i64 %671, 1
  store i64 %672, i64* %13, align 8
  %673 = getelementptr inbounds i32, i32* %670, i64 %672
  store i32 %669, i32* %673, align 4
  %674 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %675 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %674, i32 0, i32 13
  %676 = load %struct.nes_device*, %struct.nes_device** %675, align 8
  %677 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %676, i32 0, i32 6
  %678 = load i32, i32* %677, align 8
  %679 = load i32*, i32** %6, align 8
  %680 = load i64, i64* %13, align 8
  %681 = add i64 %680, 1
  store i64 %681, i64* %13, align 8
  %682 = getelementptr inbounds i32, i32* %679, i64 %681
  store i32 %678, i32* %682, align 4
  %683 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %684 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %683, i32 0, i32 13
  %685 = load %struct.nes_device*, %struct.nes_device** %684, align 8
  %686 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %685, i32 0, i32 5
  %687 = load i32, i32* %686, align 4
  %688 = load i32*, i32** %6, align 8
  %689 = load i64, i64* %13, align 8
  %690 = add i64 %689, 1
  store i64 %690, i64* %13, align 8
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  store i32 %687, i32* %691, align 4
  %692 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %693 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %692, i32 0, i32 14
  %694 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = load i32*, i32** %6, align 8
  %697 = load i64, i64* %13, align 8
  %698 = add i64 %697, 1
  store i64 %698, i64* %13, align 8
  %699 = getelementptr inbounds i32, i32* %696, i64 %698
  store i32 %695, i32* %699, align 4
  %700 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %701 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %700, i32 0, i32 13
  %702 = load %struct.nes_device*, %struct.nes_device** %701, align 8
  %703 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %702, i32 0, i32 9
  %704 = load i32, i32* %703, align 4
  %705 = load i32*, i32** %6, align 8
  %706 = load i64, i64* %13, align 8
  %707 = add i64 %706, 1
  store i64 %707, i64* %13, align 8
  %708 = getelementptr inbounds i32, i32* %705, i64 %707
  store i32 %704, i32* %708, align 4
  %709 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %710 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %709, i32 0, i32 13
  %711 = load %struct.nes_device*, %struct.nes_device** %710, align 8
  %712 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %711, i32 0, i32 4
  %713 = load i32, i32* %712, align 8
  %714 = load i32*, i32** %6, align 8
  %715 = load i64, i64* %13, align 8
  %716 = add i64 %715, 1
  store i64 %716, i64* %13, align 8
  %717 = getelementptr inbounds i32, i32* %714, i64 %716
  store i32 %713, i32* %717, align 4
  %718 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %719 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %718, i32 0, i32 3
  %720 = load i32, i32* %719, align 8
  %721 = load i32*, i32** %6, align 8
  %722 = load i64, i64* %13, align 8
  %723 = add i64 %722, 1
  store i64 %723, i64* %13, align 8
  %724 = getelementptr inbounds i32, i32* %721, i64 %723
  store i32 %720, i32* %724, align 4
  %725 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %726 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %725, i32 0, i32 4
  %727 = load i32, i32* %726, align 4
  %728 = load i32*, i32** %6, align 8
  %729 = load i64, i64* %13, align 8
  %730 = add i64 %729, 1
  store i64 %730, i64* %13, align 8
  %731 = getelementptr inbounds i32, i32* %728, i64 %730
  store i32 %727, i32* %731, align 4
  %732 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %733 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %732, i32 0, i32 5
  %734 = load i32, i32* %733, align 8
  %735 = load i32*, i32** %6, align 8
  %736 = load i64, i64* %13, align 8
  %737 = add i64 %736, 1
  store i64 %737, i64* %13, align 8
  %738 = getelementptr inbounds i32, i32* %735, i64 %737
  store i32 %734, i32* %738, align 4
  %739 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %740 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %739, i32 0, i32 6
  %741 = load i32, i32* %740, align 4
  %742 = load i32*, i32** %6, align 8
  %743 = load i64, i64* %13, align 8
  %744 = add i64 %743, 1
  store i64 %744, i64* %13, align 8
  %745 = getelementptr inbounds i32, i32* %742, i64 %744
  store i32 %741, i32* %745, align 4
  %746 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %747 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %746, i32 0, i32 7
  %748 = load i32, i32* %747, align 8
  %749 = load i32*, i32** %6, align 8
  %750 = load i64, i64* %13, align 8
  %751 = add i64 %750, 1
  store i64 %751, i64* %13, align 8
  %752 = getelementptr inbounds i32, i32* %749, i64 %751
  store i32 %748, i32* %752, align 4
  %753 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %754 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %753, i32 0, i32 13
  %755 = load %struct.nes_device*, %struct.nes_device** %754, align 8
  %756 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %755, i32 0, i32 10
  %757 = load i32, i32* %756, align 8
  %758 = load i32*, i32** %6, align 8
  %759 = load i64, i64* %13, align 8
  %760 = add i64 %759, 1
  store i64 %760, i64* %13, align 8
  %761 = getelementptr inbounds i32, i32* %758, i64 %760
  store i32 %757, i32* %761, align 4
  %762 = load i32, i32* @mh_detected, align 4
  %763 = load i32*, i32** %6, align 8
  %764 = load i64, i64* %13, align 8
  %765 = add i64 %764, 1
  store i64 %765, i64* %13, align 8
  %766 = getelementptr inbounds i32, i32* %763, i64 %765
  store i32 %762, i32* %766, align 4
  %767 = load i32, i32* @mh_pauses_sent, align 4
  %768 = load i32*, i32** %6, align 8
  %769 = load i64, i64* %13, align 8
  %770 = add i64 %769, 1
  store i64 %770, i64* %13, align 8
  %771 = getelementptr inbounds i32, i32* %768, i64 %770
  store i32 %767, i32* %771, align 4
  %772 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %773 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %772, i32 0, i32 8
  %774 = load i32, i32* %773, align 4
  %775 = load i32*, i32** %6, align 8
  %776 = load i64, i64* %13, align 8
  %777 = add i64 %776, 1
  store i64 %777, i64* %13, align 8
  %778 = getelementptr inbounds i32, i32* %775, i64 %777
  store i32 %774, i32* %778, align 4
  %779 = call i32 @atomic_read(i32* @cm_connects)
  %780 = load i32*, i32** %6, align 8
  %781 = load i64, i64* %13, align 8
  %782 = add i64 %781, 1
  store i64 %782, i64* %13, align 8
  %783 = getelementptr inbounds i32, i32* %780, i64 %782
  store i32 %779, i32* %783, align 4
  %784 = call i32 @atomic_read(i32* @cm_accepts)
  %785 = load i32*, i32** %6, align 8
  %786 = load i64, i64* %13, align 8
  %787 = add i64 %786, 1
  store i64 %787, i64* %13, align 8
  %788 = getelementptr inbounds i32, i32* %785, i64 %787
  store i32 %784, i32* %788, align 4
  %789 = call i32 @atomic_read(i32* @cm_disconnects)
  %790 = load i32*, i32** %6, align 8
  %791 = load i64, i64* %13, align 8
  %792 = add i64 %791, 1
  store i64 %792, i64* %13, align 8
  %793 = getelementptr inbounds i32, i32* %790, i64 %792
  store i32 %789, i32* %793, align 4
  %794 = call i32 @atomic_read(i32* @cm_connecteds)
  %795 = load i32*, i32** %6, align 8
  %796 = load i64, i64* %13, align 8
  %797 = add i64 %796, 1
  store i64 %797, i64* %13, align 8
  %798 = getelementptr inbounds i32, i32* %795, i64 %797
  store i32 %794, i32* %798, align 4
  %799 = call i32 @atomic_read(i32* @cm_connect_reqs)
  %800 = load i32*, i32** %6, align 8
  %801 = load i64, i64* %13, align 8
  %802 = add i64 %801, 1
  store i64 %802, i64* %13, align 8
  %803 = getelementptr inbounds i32, i32* %800, i64 %802
  store i32 %799, i32* %803, align 4
  %804 = call i32 @atomic_read(i32* @cm_rejects)
  %805 = load i32*, i32** %6, align 8
  %806 = load i64, i64* %13, align 8
  %807 = add i64 %806, 1
  store i64 %807, i64* %13, align 8
  %808 = getelementptr inbounds i32, i32* %805, i64 %807
  store i32 %804, i32* %808, align 4
  %809 = call i32 @atomic_read(i32* @mod_qp_timouts)
  %810 = load i32*, i32** %6, align 8
  %811 = load i64, i64* %13, align 8
  %812 = add i64 %811, 1
  store i64 %812, i64* %13, align 8
  %813 = getelementptr inbounds i32, i32* %810, i64 %812
  store i32 %809, i32* %813, align 4
  %814 = call i32 @atomic_read(i32* @qps_created)
  %815 = load i32*, i32** %6, align 8
  %816 = load i64, i64* %13, align 8
  %817 = add i64 %816, 1
  store i64 %817, i64* %13, align 8
  %818 = getelementptr inbounds i32, i32* %815, i64 %817
  store i32 %814, i32* %818, align 4
  %819 = call i32 @atomic_read(i32* @sw_qps_destroyed)
  %820 = load i32*, i32** %6, align 8
  %821 = load i64, i64* %13, align 8
  %822 = add i64 %821, 1
  store i64 %822, i64* %13, align 8
  %823 = getelementptr inbounds i32, i32* %820, i64 %822
  store i32 %819, i32* %823, align 4
  %824 = call i32 @atomic_read(i32* @qps_destroyed)
  %825 = load i32*, i32** %6, align 8
  %826 = load i64, i64* %13, align 8
  %827 = add i64 %826, 1
  store i64 %827, i64* %13, align 8
  %828 = getelementptr inbounds i32, i32* %825, i64 %827
  store i32 %824, i32* %828, align 4
  %829 = call i32 @atomic_read(i32* @cm_closes)
  %830 = load i32*, i32** %6, align 8
  %831 = load i64, i64* %13, align 8
  %832 = add i64 %831, 1
  store i64 %832, i64* %13, align 8
  %833 = getelementptr inbounds i32, i32* %830, i64 %832
  store i32 %829, i32* %833, align 4
  %834 = load i32, i32* @cm_packets_sent, align 4
  %835 = load i32*, i32** %6, align 8
  %836 = load i64, i64* %13, align 8
  %837 = add i64 %836, 1
  store i64 %837, i64* %13, align 8
  %838 = getelementptr inbounds i32, i32* %835, i64 %837
  store i32 %834, i32* %838, align 4
  %839 = load i32, i32* @cm_packets_bounced, align 4
  %840 = load i32*, i32** %6, align 8
  %841 = load i64, i64* %13, align 8
  %842 = add i64 %841, 1
  store i64 %842, i64* %13, align 8
  %843 = getelementptr inbounds i32, i32* %840, i64 %842
  store i32 %839, i32* %843, align 4
  %844 = load i32, i32* @cm_packets_created, align 4
  %845 = load i32*, i32** %6, align 8
  %846 = load i64, i64* %13, align 8
  %847 = add i64 %846, 1
  store i64 %847, i64* %13, align 8
  %848 = getelementptr inbounds i32, i32* %845, i64 %847
  store i32 %844, i32* %848, align 4
  %849 = load i32, i32* @cm_packets_received, align 4
  %850 = load i32*, i32** %6, align 8
  %851 = load i64, i64* %13, align 8
  %852 = add i64 %851, 1
  store i64 %852, i64* %13, align 8
  %853 = getelementptr inbounds i32, i32* %850, i64 %852
  store i32 %849, i32* %853, align 4
  %854 = load i32, i32* @cm_packets_dropped, align 4
  %855 = load i32*, i32** %6, align 8
  %856 = load i64, i64* %13, align 8
  %857 = add i64 %856, 1
  store i64 %857, i64* %13, align 8
  %858 = getelementptr inbounds i32, i32* %855, i64 %857
  store i32 %854, i32* %858, align 4
  %859 = load i32, i32* @cm_packets_retrans, align 4
  %860 = load i32*, i32** %6, align 8
  %861 = load i64, i64* %13, align 8
  %862 = add i64 %861, 1
  store i64 %862, i64* %13, align 8
  %863 = getelementptr inbounds i32, i32* %860, i64 %862
  store i32 %859, i32* %863, align 4
  %864 = call i32 @atomic_read(i32* @cm_listens_created)
  %865 = load i32*, i32** %6, align 8
  %866 = load i64, i64* %13, align 8
  %867 = add i64 %866, 1
  store i64 %867, i64* %13, align 8
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  store i32 %864, i32* %868, align 4
  %869 = call i32 @atomic_read(i32* @cm_listens_destroyed)
  %870 = load i32*, i32** %6, align 8
  %871 = load i64, i64* %13, align 8
  %872 = add i64 %871, 1
  store i64 %872, i64* %13, align 8
  %873 = getelementptr inbounds i32, i32* %870, i64 %872
  store i32 %869, i32* %873, align 4
  %874 = load i32, i32* @cm_backlog_drops, align 4
  %875 = load i32*, i32** %6, align 8
  %876 = load i64, i64* %13, align 8
  %877 = add i64 %876, 1
  store i64 %877, i64* %13, align 8
  %878 = getelementptr inbounds i32, i32* %875, i64 %877
  store i32 %874, i32* %878, align 4
  %879 = call i32 @atomic_read(i32* @cm_loopbacks)
  %880 = load i32*, i32** %6, align 8
  %881 = load i64, i64* %13, align 8
  %882 = add i64 %881, 1
  store i64 %882, i64* %13, align 8
  %883 = getelementptr inbounds i32, i32* %880, i64 %882
  store i32 %879, i32* %883, align 4
  %884 = call i32 @atomic_read(i32* @cm_nodes_created)
  %885 = load i32*, i32** %6, align 8
  %886 = load i64, i64* %13, align 8
  %887 = add i64 %886, 1
  store i64 %887, i64* %13, align 8
  %888 = getelementptr inbounds i32, i32* %885, i64 %887
  store i32 %884, i32* %888, align 4
  %889 = call i32 @atomic_read(i32* @cm_nodes_destroyed)
  %890 = load i32*, i32** %6, align 8
  %891 = load i64, i64* %13, align 8
  %892 = add i64 %891, 1
  store i64 %892, i64* %13, align 8
  %893 = getelementptr inbounds i32, i32* %890, i64 %892
  store i32 %889, i32* %893, align 4
  %894 = call i32 @atomic_read(i32* @cm_accel_dropped_pkts)
  %895 = load i32*, i32** %6, align 8
  %896 = load i64, i64* %13, align 8
  %897 = add i64 %896, 1
  store i64 %897, i64* %13, align 8
  %898 = getelementptr inbounds i32, i32* %895, i64 %897
  store i32 %894, i32* %898, align 4
  %899 = call i32 @atomic_read(i32* @cm_resets_recvd)
  %900 = load i32*, i32** %6, align 8
  %901 = load i64, i64* %13, align 8
  %902 = add i64 %901, 1
  store i64 %902, i64* %13, align 8
  %903 = getelementptr inbounds i32, i32* %900, i64 %902
  store i32 %899, i32* %903, align 4
  %904 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %905 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %904, i32 0, i32 1
  %906 = load i32, i32* %905, align 4
  %907 = load i32*, i32** %6, align 8
  %908 = load i64, i64* %13, align 8
  %909 = add i64 %908, 1
  store i64 %909, i64* %13, align 8
  %910 = getelementptr inbounds i32, i32* %907, i64 %909
  store i32 %906, i32* %910, align 4
  %911 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  %912 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %911, i32 0, i32 2
  %913 = load i32, i32* %912, align 4
  %914 = load i32*, i32** %6, align 8
  %915 = load i64, i64* %13, align 8
  %916 = add i64 %915, 1
  store i64 %916, i64* %13, align 8
  %917 = getelementptr inbounds i32, i32* %914, i64 %916
  store i32 %913, i32* %917, align 4
  %918 = load i32, i32* @int_mod_timer_init, align 4
  %919 = load i32*, i32** %6, align 8
  %920 = load i64, i64* %13, align 8
  %921 = add i64 %920, 1
  store i64 %921, i64* %13, align 8
  %922 = getelementptr inbounds i32, i32* %919, i64 %921
  store i32 %918, i32* %922, align 4
  %923 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %924 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %923, i32 0, i32 12
  %925 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %924, i32 0, i32 0
  %926 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %925, i32 0, i32 0
  %927 = load i32, i32* %926, align 4
  %928 = load i32*, i32** %6, align 8
  %929 = load i64, i64* %13, align 8
  %930 = add i64 %929, 1
  store i64 %930, i64* %13, align 8
  %931 = getelementptr inbounds i32, i32* %928, i64 %930
  store i32 %927, i32* %931, align 4
  %932 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %933 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %932, i32 0, i32 12
  %934 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %933, i32 0, i32 0
  %935 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %934, i32 0, i32 1
  %936 = load i32, i32* %935, align 4
  %937 = load i32*, i32** %6, align 8
  %938 = load i64, i64* %13, align 8
  %939 = add i64 %938, 1
  store i64 %939, i64* %13, align 8
  %940 = getelementptr inbounds i32, i32* %937, i64 %939
  store i32 %936, i32* %940, align 4
  %941 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %942 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %941, i32 0, i32 12
  %943 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %942, i32 0, i32 0
  %944 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %943, i32 0, i32 2
  %945 = load i32, i32* %944, align 4
  %946 = load i32*, i32** %6, align 8
  %947 = load i64, i64* %13, align 8
  %948 = add i64 %947, 1
  store i64 %948, i64* %13, align 8
  %949 = getelementptr inbounds i32, i32* %946, i64 %948
  store i32 %945, i32* %949, align 4
  %950 = call i32 @atomic_read(i32* @pau_qps_created)
  %951 = load i32*, i32** %6, align 8
  %952 = load i64, i64* %13, align 8
  %953 = add i64 %952, 1
  store i64 %953, i64* %13, align 8
  %954 = getelementptr inbounds i32, i32* %951, i64 %953
  store i32 %950, i32* %954, align 4
  %955 = call i32 @atomic_read(i32* @pau_qps_destroyed)
  %956 = load i32*, i32** %6, align 8
  %957 = load i64, i64* %13, align 8
  %958 = add i64 %957, 1
  store i64 %958, i64* %13, align 8
  %959 = getelementptr inbounds i32, i32* %956, i64 %958
  store i32 %955, i32* %959, align 4
  ret void
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nes_read_indexed(%struct.nes_device*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
