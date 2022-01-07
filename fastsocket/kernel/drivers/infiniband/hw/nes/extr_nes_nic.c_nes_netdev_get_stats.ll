; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.nes_vnic = type { i32, %struct.net_device_stats, %struct.nes_device*, i32, i32, i32, i32, i32 }
%struct.nes_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@NES_IDX_ENDNODE0_NSTAT_RX_DISCARD = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO = common dso_local global i64 0, align 8
@NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_SHORT_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_OVERSIZED_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_JABBER_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_LENGTH_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_RX_CRC_ERR_FRAMES = common dso_local global i64 0, align 8
@NES_IDX_MAC_TX_ERRORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @nes_netdev_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @nes_netdev_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nes_vnic*, align 8
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %7)
  store %struct.nes_vnic* %8, %struct.nes_vnic** %3, align 8
  %9 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %10 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %9, i32 0, i32 2
  %11 = load %struct.nes_device*, %struct.nes_device** %10, align 8
  store %struct.nes_device* %11, %struct.nes_device** %4, align 8
  %12 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %13 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_DISCARD, align 8
  %14 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %15 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 512
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %13, %18
  %20 = call i64 @nes_read_indexed(%struct.nes_device* %12, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %23 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %31 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %37 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_LO, align 8
  %38 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %39 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 512
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %37, %42
  %44 = call i64 @nes_read_indexed(%struct.nes_device* %36, i64 %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %47 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_OCTETS_HI, align 8
  %48 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %49 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 512
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = call i64 @nes_read_indexed(%struct.nes_device* %46, i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %61 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %66 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %71 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_LO, align 8
  %72 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %73 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 512
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %71, %76
  %78 = call i64 @nes_read_indexed(%struct.nes_device* %70, i64 %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %81 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_RX_FRAMES_HI, align 8
  %82 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %83 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 512
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %81, %86
  %88 = call i64 @nes_read_indexed(%struct.nes_device* %80, i64 %87)
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 32
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %95 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %100 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %105 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_LO, align 8
  %106 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %107 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 512
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %105, %110
  %112 = call i64 @nes_read_indexed(%struct.nes_device* %104, i64 %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %5, align 4
  %114 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %115 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_OCTETS_HI, align 8
  %116 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %117 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %118, 512
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %115, %120
  %122 = call i64 @nes_read_indexed(%struct.nes_device* %114, i64 %121)
  %123 = trunc i64 %122 to i32
  %124 = shl i32 %123, 32
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %129 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %134 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 4
  %138 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %139 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_LO, align 8
  %140 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %141 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 512
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %139, %144
  %146 = call i64 @nes_read_indexed(%struct.nes_device* %138, i64 %145)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  %148 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %149 = load i64, i64* @NES_IDX_ENDNODE0_NSTAT_TX_FRAMES_HI, align 8
  %150 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %151 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 512
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %149, %154
  %156 = call i64 @nes_read_indexed(%struct.nes_device* %148, i64 %155)
  %157 = trunc i64 %156 to i32
  %158 = shl i32 %157, 32
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %163 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %168 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %173 = load i64, i64* @NES_IDX_MAC_RX_SHORT_FRAMES, align 8
  %174 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %175 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %174, i32 0, i32 2
  %176 = load %struct.nes_device*, %struct.nes_device** %175, align 8
  %177 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 512
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %173, %180
  %182 = call i64 @nes_read_indexed(%struct.nes_device* %172, i64 %181)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %185 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %188, %183
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %186, align 4
  %191 = load i64, i64* %6, align 8
  %192 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %193 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %192, i32 0, i32 2
  %194 = load %struct.nes_device*, %struct.nes_device** %193, align 8
  %195 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %191
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %202 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %201, i32 0, i32 2
  %203 = load %struct.nes_device*, %struct.nes_device** %202, align 8
  %204 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %200
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %210 = load i64, i64* @NES_IDX_MAC_RX_OVERSIZED_FRAMES, align 8
  %211 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %212 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %211, i32 0, i32 2
  %213 = load %struct.nes_device*, %struct.nes_device** %212, align 8
  %214 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %215, 512
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %210, %217
  %219 = call i64 @nes_read_indexed(%struct.nes_device* %209, i64 %218)
  store i64 %219, i64* %6, align 8
  %220 = load i64, i64* %6, align 8
  %221 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %222 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %220
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 4
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %230 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %229, i32 0, i32 2
  %231 = load %struct.nes_device*, %struct.nes_device** %230, align 8
  %232 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %228
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 4
  %237 = load i64, i64* %6, align 8
  %238 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %239 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %238, i32 0, i32 2
  %240 = load %struct.nes_device*, %struct.nes_device** %239, align 8
  %241 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %237
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 4
  %246 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %247 = load i64, i64* @NES_IDX_MAC_RX_JABBER_FRAMES, align 8
  %248 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %249 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %248, i32 0, i32 2
  %250 = load %struct.nes_device*, %struct.nes_device** %249, align 8
  %251 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %252, 512
  %254 = sext i32 %253 to i64
  %255 = add nsw i64 %247, %254
  %256 = call i64 @nes_read_indexed(%struct.nes_device* %246, i64 %255)
  store i64 %256, i64* %6, align 8
  %257 = load i64, i64* %6, align 8
  %258 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %259 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %257
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %260, align 4
  %265 = load i64, i64* %6, align 8
  %266 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %267 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %266, i32 0, i32 2
  %268 = load %struct.nes_device*, %struct.nes_device** %267, align 8
  %269 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %265
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %269, align 4
  %274 = load i64, i64* %6, align 8
  %275 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %276 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %275, i32 0, i32 2
  %277 = load %struct.nes_device*, %struct.nes_device** %276, align 8
  %278 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %274
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  %283 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %284 = load i64, i64* @NES_IDX_MAC_RX_SYMBOL_ERR_FRAMES, align 8
  %285 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %286 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %285, i32 0, i32 2
  %287 = load %struct.nes_device*, %struct.nes_device** %286, align 8
  %288 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %289, 512
  %291 = sext i32 %290 to i64
  %292 = add nsw i64 %284, %291
  %293 = call i64 @nes_read_indexed(%struct.nes_device* %283, i64 %292)
  store i64 %293, i64* %6, align 8
  %294 = load i64, i64* %6, align 8
  %295 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %296 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %299, %294
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %297, align 4
  %302 = load i64, i64* %6, align 8
  %303 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %304 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %303, i32 0, i32 2
  %305 = load %struct.nes_device*, %struct.nes_device** %304, align 8
  %306 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %308, %302
  %310 = trunc i64 %309 to i32
  store i32 %310, i32* %306, align 4
  %311 = load i64, i64* %6, align 8
  %312 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %313 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %312, i32 0, i32 2
  %314 = load %struct.nes_device*, %struct.nes_device** %313, align 8
  %315 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %311
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %315, align 4
  %320 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %321 = load i64, i64* @NES_IDX_MAC_RX_LENGTH_ERR_FRAMES, align 8
  %322 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %323 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %322, i32 0, i32 2
  %324 = load %struct.nes_device*, %struct.nes_device** %323, align 8
  %325 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 %326, 512
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %321, %328
  %330 = call i64 @nes_read_indexed(%struct.nes_device* %320, i64 %329)
  store i64 %330, i64* %6, align 8
  %331 = load i64, i64* %6, align 8
  %332 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %333 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %336, %331
  %338 = trunc i64 %337 to i32
  store i32 %338, i32* %334, align 4
  %339 = load i64, i64* %6, align 8
  %340 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %341 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %340, i32 0, i32 2
  %342 = load %struct.nes_device*, %struct.nes_device** %341, align 8
  %343 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = add nsw i64 %345, %339
  %347 = trunc i64 %346 to i32
  store i32 %347, i32* %343, align 4
  %348 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %349 = load i64, i64* @NES_IDX_MAC_RX_CRC_ERR_FRAMES, align 8
  %350 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %351 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %350, i32 0, i32 2
  %352 = load %struct.nes_device*, %struct.nes_device** %351, align 8
  %353 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 %354, 512
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %349, %356
  %358 = call i64 @nes_read_indexed(%struct.nes_device* %348, i64 %357)
  store i64 %358, i64* %6, align 8
  %359 = load i64, i64* %6, align 8
  %360 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %361 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %360, i32 0, i32 2
  %362 = load %struct.nes_device*, %struct.nes_device** %361, align 8
  %363 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %359
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 4
  %368 = load i64, i64* %6, align 8
  %369 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %370 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %369, i32 0, i32 2
  %371 = load %struct.nes_device*, %struct.nes_device** %370, align 8
  %372 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %368
  %376 = trunc i64 %375 to i32
  store i32 %376, i32* %372, align 4
  %377 = load i64, i64* %6, align 8
  %378 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %379 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %382, %377
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %380, align 4
  %385 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %386 = load i64, i64* @NES_IDX_MAC_TX_ERRORS, align 8
  %387 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %388 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %387, i32 0, i32 2
  %389 = load %struct.nes_device*, %struct.nes_device** %388, align 8
  %390 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = mul nsw i32 %391, 512
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %386, %393
  %395 = call i64 @nes_read_indexed(%struct.nes_device* %385, i64 %394)
  store i64 %395, i64* %6, align 8
  %396 = load i64, i64* %6, align 8
  %397 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %398 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %397, i32 0, i32 2
  %399 = load %struct.nes_device*, %struct.nes_device** %398, align 8
  %400 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = add nsw i64 %402, %396
  %404 = trunc i64 %403 to i32
  store i32 %404, i32* %400, align 4
  %405 = load i64, i64* %6, align 8
  %406 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %407 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %405
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %414 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %413, i32 0, i32 1
  ret %struct.net_device_stats* %414
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nes_read_indexed(%struct.nes_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
