; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_elp_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_elp_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, i32 }

@STATION_ACTIVE_MODE = common dso_local global i64 0, align 8
@ELP_ENTRY_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_ps_elp_sleep(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i64, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %4 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %5 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @STATION_ACTIVE_MODE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @ELP_ENTRY_DELAY, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %13 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %16 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %15, i32 0, i32 1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ieee80211_queue_delayed_work(i32 %14, i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %9, %1
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
