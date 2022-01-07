; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, i64, i64, i64 }
%struct.e1000_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.e1000_hw, %struct.net_device* }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.e1000_tx_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_TXOFF = common dso_local global i32 0, align 4
@TX_WAKE_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*)* @e1000_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_tx_irq(%struct.e1000_ring* %0) #0 {
  %2 = alloca %struct.e1000_ring*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca %struct.e1000_tx_desc*, align 8
  %7 = alloca %struct.e1000_tx_desc*, align 8
  %8 = alloca %struct.e1000_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %2, align 8
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %15, i32 0, i32 4
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %16, align 8
  store %struct.e1000_adapter* %17, %struct.e1000_adapter** %3, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 9
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %4, align 8
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 8
  store %struct.e1000_hw* %22, %struct.e1000_hw** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %27 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %26, i32 0, i32 3
  %28 = load %struct.e1000_buffer*, %struct.e1000_buffer** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %28, i64 %30
  %32 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %34, i32 %35)
  store %struct.e1000_tx_desc* %36, %struct.e1000_tx_desc** %7, align 8
  br label %37

37:                                               ; preds = %117, %1
  %38 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %7, align 8
  %39 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ult i32 %47, %50
  br label %52

52:                                               ; preds = %46, %37
  %53 = phi i1 [ false, %37 ], [ %51, %46 ]
  br i1 %53, label %54, label %129

54:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  %55 = call i32 (...) @rmb()
  br label %56

56:                                               ; preds = %107, %54
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %110

60:                                               ; preds = %56
  %61 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %61, i32 %62)
  store %struct.e1000_tx_desc* %63, %struct.e1000_tx_desc** %6, align 8
  %64 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %64, i32 0, i32 3
  %66 = load %struct.e1000_buffer*, %struct.e1000_buffer** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %66, i64 %68
  store %struct.e1000_buffer* %69, %struct.e1000_buffer** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %60
  %77 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %78 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %13, align 4
  %84 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %76, %60
  %92 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %93 = load %struct.e1000_buffer*, %struct.e1000_buffer** %8, align 8
  %94 = call i32 @e1000_put_txbuf(%struct.e1000_ring* %92, %struct.e1000_buffer* %93)
  %95 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %6, align 8
  %96 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %102 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %91
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %56

110:                                              ; preds = %56
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %113 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %129

117:                                              ; preds = %110
  %118 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %119 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %118, i32 0, i32 3
  %120 = load %struct.e1000_buffer*, %struct.e1000_buffer** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %120, i64 %122
  %124 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %10, align 4
  %126 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %126, i32 %127)
  store %struct.e1000_tx_desc* %128, %struct.e1000_tx_desc** %7, align 8
  br label %37

129:                                              ; preds = %116, %52
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %132 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %129
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = call i64 @netif_carrier_ok(%struct.net_device* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %141 = call i64 @e1000_desc_unused(%struct.e1000_ring* %140)
  %142 = icmp sge i64 %141, 32
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = call i32 (...) @smp_mb()
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = call i64 @netif_queue_stopped(%struct.net_device* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32, i32* @__E1000_DOWN, align 4
  %150 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %150, i32 0, i32 7
  %152 = call i32 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %148
  %155 = load %struct.net_device*, %struct.net_device** %4, align 8
  %156 = call i32 @netif_wake_queue(%struct.net_device* %155)
  %157 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %158 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %154, %148, %143
  br label %162

162:                                              ; preds = %161, %139, %135, %129
  %163 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %212

167:                                              ; preds = %162
  %168 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %171 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %170, i32 0, i32 3
  %172 = load %struct.e1000_buffer*, %struct.e1000_buffer** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %172, i64 %174
  %176 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %167
  %180 = load i32, i32* @jiffies, align 4
  %181 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %182 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %181, i32 0, i32 3
  %183 = load %struct.e1000_buffer*, %struct.e1000_buffer** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %183, i64 %185
  %187 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %190 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @HZ, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %188, %194
  %196 = call i64 @time_after(i32 %180, i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %179
  %199 = load i32, i32* @STATUS, align 4
  %200 = call i32 @er32(i32 %199)
  %201 = load i32, i32* @E1000_STATUS_TXOFF, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %198
  %205 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %206 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %205, i32 0, i32 5
  %207 = call i32 @schedule_work(i32* %206)
  br label %211

208:                                              ; preds = %198, %179, %167
  %209 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %210 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %209, i32 0, i32 2
  store i32 0, i32* %210, align 8
  br label %211

211:                                              ; preds = %208, %204
  br label %212

212:                                              ; preds = %211, %162
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %215 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %220 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = add i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.net_device*, %struct.net_device** %4, align 8
  %225 = getelementptr inbounds %struct.net_device, %struct.net_device* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, %223
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.net_device*, %struct.net_device** %4, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, %229
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load %struct.e1000_ring*, %struct.e1000_ring** %2, align 8
  %237 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ult i32 %235, %238
  %240 = zext i1 %239 to i32
  ret i32 %240
}

declare dso_local %struct.e1000_tx_desc* @E1000_TX_DESC(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @e1000_put_txbuf(%struct.e1000_ring*, %struct.e1000_buffer*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @e1000_desc_unused(%struct.e1000_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
