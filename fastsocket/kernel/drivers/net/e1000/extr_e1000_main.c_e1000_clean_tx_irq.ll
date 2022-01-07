; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.e1000_tx_ring*, i32, i32, %struct.net_device*, %struct.e1000_hw }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_tx_ring = type { i32, i32, %struct.e1000_buffer*, i32, i64, i64 }
%struct.e1000_buffer = type { i32, i64, i64, i64 }
%struct.e1000_tx_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TXOFF = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [305 x i8] c"Detected Tx Unit Hang\0A  Tx Queue             <%lu>\0A  TDH                  <%x>\0A  TDT                  <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0Abuffer_info[next_to_clean]\0A  time_stamp           <%lx>\0A  next_to_watch        <%x>\0A  jiffies              <%lx>\0A  next_to_watch.status <%x>\0A\00", align 1
@TX_WAKE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_tx_ring*)* @e1000_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_tx_irq(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_tx_ring*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.e1000_tx_desc*, align 8
  %8 = alloca %struct.e1000_tx_desc*, align 8
  %9 = alloca %struct.e1000_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %4, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 8
  store %struct.e1000_hw* %17, %struct.e1000_hw** %5, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 7
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %6, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %24, i32 0, i32 2
  %26 = load %struct.e1000_buffer*, %struct.e1000_buffer** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %26, i64 %28
  %30 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %32, i32 %33)
  store %struct.e1000_tx_desc* %34, %struct.e1000_tx_desc** %8, align 8
  br label %35

35:                                               ; preds = %110, %2
  %36 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %8, align 8
  %37 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br label %50

50:                                               ; preds = %44, %35
  %51 = phi i1 [ false, %35 ], [ %49, %44 ]
  br i1 %51, label %52, label %122

52:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  %53 = call i32 (...) @rmb()
  br label %54

54:                                               ; preds = %107, %52
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %110

58:                                               ; preds = %54
  %59 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %59, i32 %60)
  store %struct.e1000_tx_desc* %61, %struct.e1000_tx_desc** %7, align 8
  %62 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %62, i32 0, i32 2
  %64 = load %struct.e1000_buffer*, %struct.e1000_buffer** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %64, i64 %66
  store %struct.e1000_buffer* %67, %struct.e1000_buffer** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %58
  %75 = load %struct.e1000_buffer*, %struct.e1000_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  %82 = load %struct.e1000_buffer*, %struct.e1000_buffer** %9, align 8
  %83 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %74, %58
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %91 = load %struct.e1000_buffer*, %struct.e1000_buffer** %9, align 8
  %92 = call i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter* %90, %struct.e1000_buffer* %91)
  %93 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %7, align 8
  %94 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %89
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %12, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %54

110:                                              ; preds = %54
  %111 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %112 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %111, i32 0, i32 2
  %113 = load %struct.e1000_buffer*, %struct.e1000_buffer** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %113, i64 %115
  %117 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %11, align 4
  %119 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8 %119, i32 %120)
  store %struct.e1000_tx_desc* %121, %struct.e1000_tx_desc** %8, align 8
  br label %35

122:                                              ; preds = %50
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = call i64 @netif_carrier_ok(%struct.net_device* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %134 = call i64 @E1000_DESC_UNUSED(%struct.e1000_tx_ring* %133)
  %135 = icmp sge i64 %134, 32
  br label %136

136:                                              ; preds = %132, %128, %122
  %137 = phi i1 [ false, %128 ], [ false, %122 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = call i32 (...) @smp_mb()
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i64 @netif_queue_stopped(%struct.net_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i32, i32* @__E1000_DOWN, align 4
  %148 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %148, i32 0, i32 6
  %150 = call i32 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %146
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = call i32 @netif_wake_queue(%struct.net_device* %153)
  %155 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %156 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %146, %141
  br label %160

160:                                              ; preds = %159, %136
  %161 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %256

165:                                              ; preds = %160
  %166 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %167 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %169 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %168, i32 0, i32 2
  %170 = load %struct.e1000_buffer*, %struct.e1000_buffer** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %170, i64 %172
  %174 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %255

177:                                              ; preds = %165
  %178 = load i32, i32* @jiffies, align 4
  %179 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %180 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %179, i32 0, i32 2
  %181 = load %struct.e1000_buffer*, %struct.e1000_buffer** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %181, i64 %183
  %185 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @HZ, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %186, %192
  %194 = call i64 @time_after(i32 %178, i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %255

196:                                              ; preds = %177
  %197 = load i32, i32* @STATUS, align 4
  %198 = call i32 @er32(i32 %197)
  %199 = load i32, i32* @E1000_STATUS_TXOFF, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %255, label %202

202:                                              ; preds = %196
  %203 = load i32, i32* @drv, align 4
  %204 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %205 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %206 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %205, i32 0, i32 4
  %207 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %206, align 8
  %208 = ptrtoint %struct.e1000_tx_ring* %204 to i64
  %209 = ptrtoint %struct.e1000_tx_ring* %207 to i64
  %210 = sub i64 %208, %209
  %211 = sdiv exact i64 %210, 40
  %212 = udiv i64 %211, 40
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %214 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %217 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = call i32 @readl(i64 %219)
  %221 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %222 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %225 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %223, %226
  %228 = call i32 @readl(i64 %227)
  %229 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %230 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %233 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %236 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %235, i32 0, i32 2
  %237 = load %struct.e1000_buffer*, %struct.e1000_buffer** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %237, i64 %239
  %241 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* @jiffies, align 4
  %245 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %8, align 8
  %246 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @e_err(i32 %203, i8* getelementptr inbounds ([305 x i8], [305 x i8]* @.str, i64 0, i64 0), i64 %212, i32 %220, i32 %228, i32 %231, i32 %234, i64 %242, i32 %243, i32 %244, i32 %249)
  %251 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %252 = call i32 @e1000_dump(%struct.e1000_adapter* %251)
  %253 = load %struct.net_device*, %struct.net_device** %6, align 8
  %254 = call i32 @netif_stop_queue(%struct.net_device* %253)
  br label %255

255:                                              ; preds = %202, %196, %177, %165
  br label %256

256:                                              ; preds = %255, %160
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %259 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = add i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* %14, align 4
  %263 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %264 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = add i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.net_device*, %struct.net_device** %6, align 8
  %269 = getelementptr inbounds %struct.net_device, %struct.net_device* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %267
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load %struct.net_device*, %struct.net_device** %6, align 8
  %275 = getelementptr inbounds %struct.net_device, %struct.net_device* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, %273
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* %12, align 4
  %280 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %4, align 8
  %281 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ult i32 %279, %282
  %284 = zext i1 %283 to i32
  ret i32 %284
}

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_tx_ring* byval(%struct.e1000_tx_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter*, %struct.e1000_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @E1000_DESC_UNUSED(%struct.e1000_tx_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_err(i32, i8*, i64, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @e1000_dump(%struct.e1000_adapter*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
