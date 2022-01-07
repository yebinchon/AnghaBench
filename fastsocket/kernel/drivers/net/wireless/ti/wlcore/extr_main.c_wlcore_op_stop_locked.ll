; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_stop_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, i32*, i32*, i32*, i32*, i64*, i64*, i64, i64, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@WL1271_DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i32 0, align 4
@WL12XX_SYSTEM_HLID = common dso_local global i64 0, align 8
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wlcore_op_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_op_stop_locked(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %4 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %5 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 9
  %13 = call i64 @test_and_clear_bit(i32 %10, i64* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %17 = call i32 @wlcore_enable_interrupts(%struct.wl1271* %16)
  br label %18

18:                                               ; preds = %15, %9
  br label %189

19:                                               ; preds = %1
  %20 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %24 = call i32 @wlcore_disable_interrupts_nosync(%struct.wl1271* %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 29
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %29 = call i32 @wlcore_synchronize_interrupts(%struct.wl1271* %28)
  %30 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 9
  %33 = call i32 @test_bit(i32 %30, i64* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %19
  %36 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 35
  %38 = call i32 @cancel_work_sync(i32* %37)
  br label %39

39:                                               ; preds = %35, %19
  %40 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %41 = call i32 @wl1271_flush_deferred_work(%struct.wl1271* %40)
  %42 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 34
  %44 = call i32 @cancel_delayed_work_sync(i32* %43)
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 33
  %47 = call i32 @cancel_work_sync(i32* %46)
  %48 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 32
  %50 = call i32 @cancel_work_sync(i32* %49)
  %51 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 31
  %53 = call i32 @cancel_delayed_work_sync(i32* %52)
  %54 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %55 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %54, i32 0, i32 30
  %56 = call i32 @cancel_delayed_work_sync(i32* %55)
  %57 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 29
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %61 = call i32 @wl12xx_tx_reset(%struct.wl1271* %60)
  %62 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %63 = call i32 @wl1271_power_off(%struct.wl1271* %62)
  %64 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 9
  %67 = call i64 @test_and_clear_bit(i32 %64, i64* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %71 = call i32 @wlcore_enable_interrupts(%struct.wl1271* %70)
  br label %72

72:                                               ; preds = %69, %39
  %73 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %74 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 28
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 27
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @WL1271_DEFAULT_POWER_LEVEL, align 4
  %79 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 26
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %82 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 25
  store i32 %81, i32* %83, align 8
  %84 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 24
  store i64 0, i64* %85, align 8
  %86 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %87 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %86, i32 0, i32 23
  store i64 0, i64* %87, align 8
  %88 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 22
  store i64 0, i64* %89, align 8
  %90 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 21
  store i64 0, i64* %91, align 8
  %92 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %93 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %92, i32 0, i32 20
  store i64 0, i64* %93, align 8
  %94 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %95 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %94, i32 0, i32 19
  store i64 0, i64* %95, align 8
  %96 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 18
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @WL1271_PSM_ILLEGAL, align 4
  %99 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %100 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %99, i32 0, i32 17
  store i32 %98, i32* %100, align 4
  %101 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memset(i32 %103, i32 0, i32 4)
  %105 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memset(i32 %107, i32 0, i32 4)
  %109 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %110 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %109, i32 0, i32 15
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memset(i32 %111, i32 0, i32 4)
  %113 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %114 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %113, i32 0, i32 14
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(i32 %115, i32 0, i32 4)
  %117 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 13
  store i64 0, i64* %118, align 8
  %119 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 12
  store i64 0, i64* %120, align 8
  %121 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %122 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %121, i32 0, i32 11
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i64, i64* @WL12XX_SYSTEM_HLID, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %128 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %127, i32 0, i32 11
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i64, i64* @WL12XX_SYSTEM_HLID, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load i64, i64* @WL12XX_SYSTEM_HLID, align 8
  %134 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %135 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @__set_bit(i64 %133, i32 %136)
  %138 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %139 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %138, i32 0, i32 9
  store i64 0, i64* %139, align 8
  %140 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %141 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %140, i32 0, i32 8
  store i64 0, i64* %141, align 8
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %159, %72
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @NUM_TX_QUEUES, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %148 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %147, i32 0, i32 7
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 0, i64* %152, align 8
  %153 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %154 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %153, i32 0, i32 6
  %155 = load i64*, i64** %154, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %146
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  br label %142

162:                                              ; preds = %142
  %163 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %164 = call i32 @wl1271_debugfs_reset(%struct.wl1271* %163)
  %165 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %166 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @kfree(i32* %167)
  %169 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %170 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %169, i32 0, i32 5
  store i32* null, i32** %170, align 8
  %171 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %172 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %171, i32 0, i32 4
  store i32* null, i32** %172, align 8
  %173 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %174 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %178 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %177, i32 0, i32 3
  store i32* null, i32** %178, align 8
  %179 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %180 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @kfree(i32* %181)
  %183 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %184 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %183, i32 0, i32 2
  store i32* null, i32** %184, align 8
  %185 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %186 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @memset(i32 %187, i32 0, i32 4)
  br label %189

189:                                              ; preds = %162, %18
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @wlcore_enable_interrupts(%struct.wl1271*) #1

declare dso_local i32 @wlcore_disable_interrupts_nosync(%struct.wl1271*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wlcore_synchronize_interrupts(%struct.wl1271*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @wl1271_flush_deferred_work(%struct.wl1271*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl12xx_tx_reset(%struct.wl1271*) #1

declare dso_local i32 @wl1271_power_off(%struct.wl1271*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @wl1271_debugfs_reset(%struct.wl1271*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
