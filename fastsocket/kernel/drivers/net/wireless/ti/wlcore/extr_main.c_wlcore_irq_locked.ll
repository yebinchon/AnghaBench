; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@WL1271_IRQ_MAX_LOOPS = common dso_local global i32 0, align 4
@WL12XX_PLATFORM_QUIRK_EDGE_IRQ = common dso_local global i32 0, align 4
@DEBUG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"IRQ work\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WL1271_FLAG_IRQ_RUNNING = common dso_local global i32 0, align 4
@WLCORE_ALL_INTR_MASK = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_WATCHDOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"HW watchdog interrupt received! starting recovery.\00", align 1
@EIO = common dso_local global i32 0, align 4
@WL1271_ACX_SW_INTR_WATCHDOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"SW watchdog interrupt received! starting recovery.\00", align 1
@WL1271_ACX_INTR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"WL1271_ACX_INTR_DATA\00", align 1
@WL1271_FLAG_FW_TX_BUSY = common dso_local global i32 0, align 4
@WL1271_DEFERRED_QUEUE_LIMIT = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_EVENT_A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"WL1271_ACX_INTR_EVENT_A\00", align 1
@WL1271_ACX_INTR_EVENT_B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"WL1271_ACX_INTR_EVENT_B\00", align 1
@WL1271_ACX_INTR_INIT_COMPLETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"WL1271_ACX_INTR_INIT_COMPLETE\00", align 1
@WL1271_ACX_INTR_HW_AVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"WL1271_ACX_INTR_HW_AVAILABLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_irq_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_irq_locked(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @WL1271_IRQ_MAX_LOOPS, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @WL12XX_PLATFORM_QUIRK_EDGE_IRQ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @DEBUG_IRQ, align 4
  %19 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WLCORE_STATE_ON, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %217

29:                                               ; preds = %17
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = call i32 @wl1271_ps_elp_wakeup(%struct.wl1271* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %217

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %213, %76, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = icmp ne i32 %40, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %214

45:                                               ; preds = %43
  %46 = load i32, i32* @WL1271_FLAG_IRQ_RUNNING, align 4
  %47 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 6
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = call i32 (...) @smp_mb__after_clear_bit()
  %51 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 7
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @wlcore_fw_status(%struct.wl1271* %51, %struct.TYPE_3__* %54, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %217

62:                                               ; preds = %45
  %63 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %64 = call i32 @wlcore_hw_tx_immediate_compl(%struct.wl1271* %63)
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 7
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @WLCORE_ALL_INTR_MASK, align 4
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %36

77:                                               ; preds = %62
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @WL1271_ACX_INTR_WATCHDOG, align 4
  %80 = and i32 %78, %79
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = call i32 @wl1271_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 2
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %217

89:                                               ; preds = %77
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @WL1271_ACX_SW_INTR_WATCHDOG, align 4
  %92 = and i32 %90, %91
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = call i32 @wl1271_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %217

101:                                              ; preds = %89
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @WL1271_ACX_INTR_DATA, align 4
  %104 = and i32 %102, %103
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %169

107:                                              ; preds = %101
  %108 = load i32, i32* @DEBUG_IRQ, align 4
  %109 = call i32 @wl1271_debug(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %111 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %112 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %111, i32 0, i32 7
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = call i32 @wlcore_rx(%struct.wl1271* %110, %struct.TYPE_3__* %113)
  store i32 %114, i32* %3, align 4
  %115 = load i32, i32* %3, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %217

118:                                              ; preds = %107
  %119 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 5
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @spin_lock_irqsave(i32* %120, i64 %121)
  %123 = load i32, i32* @WL1271_FLAG_FW_TX_BUSY, align 4
  %124 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %125 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %124, i32 0, i32 6
  %126 = call i32 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %118
  %129 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %130 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %129)
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 5
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %138 = call i32 @wlcore_tx_work_locked(%struct.wl1271* %137)
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %217

142:                                              ; preds = %132
  br label %148

143:                                              ; preds = %128, %118
  %144 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 5
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* %145, i64 %146)
  br label %148

148:                                              ; preds = %143, %142
  %149 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %150 = call i32 @wlcore_hw_tx_delayed_compl(%struct.wl1271* %149)
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %217

154:                                              ; preds = %148
  %155 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %156 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %155, i32 0, i32 4
  %157 = call i32 @skb_queue_len(i32* %156)
  %158 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %159 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %158, i32 0, i32 3
  %160 = call i32 @skb_queue_len(i32* %159)
  %161 = add i32 %157, %160
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @WL1271_DEFERRED_QUEUE_LIMIT, align 4
  %164 = icmp ugt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %154
  %166 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %167 = call i32 @wl1271_flush_deferred_work(%struct.wl1271* %166)
  br label %168

168:                                              ; preds = %165, %154
  br label %169

169:                                              ; preds = %168, %101
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @WL1271_ACX_INTR_EVENT_A, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load i32, i32* @DEBUG_IRQ, align 4
  %176 = call i32 @wl1271_debug(i32 %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %177 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %178 = call i32 @wl1271_event_handle(%struct.wl1271* %177, i32 0)
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %217

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %169
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @WL1271_ACX_INTR_EVENT_B, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* @DEBUG_IRQ, align 4
  %190 = call i32 @wl1271_debug(i32 %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %191 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %192 = call i32 @wl1271_event_handle(%struct.wl1271* %191, i32 1)
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* %3, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %217

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @WL1271_ACX_INTR_INIT_COMPLETE, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i32, i32* @DEBUG_IRQ, align 4
  %204 = call i32 @wl1271_debug(i32 %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @WL1271_ACX_INTR_HW_AVAILABLE, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* @DEBUG_IRQ, align 4
  %212 = call i32 @wl1271_debug(i32 %211, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %205
  br label %36

214:                                              ; preds = %43
  %215 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %216 = call i32 @wl1271_ps_elp_sleep(%struct.wl1271* %215)
  br label %217

217:                                              ; preds = %214, %195, %181, %153, %141, %117, %95, %83, %61, %34, %28
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_ps_elp_wakeup(%struct.wl1271*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @wlcore_fw_status(%struct.wl1271*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @wlcore_hw_tx_immediate_compl(%struct.wl1271*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wlcore_rx(%struct.wl1271*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wlcore_tx_work_locked(%struct.wl1271*) #1

declare dso_local i32 @wlcore_hw_tx_delayed_compl(%struct.wl1271*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @wl1271_flush_deferred_work(%struct.wl1271*) #1

declare dso_local i32 @wl1271_event_handle(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_ps_elp_sleep(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
