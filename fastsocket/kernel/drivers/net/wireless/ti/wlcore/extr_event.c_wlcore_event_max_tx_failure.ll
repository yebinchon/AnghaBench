; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_max_tx_failure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_event.c_wlcore_event_max_tx_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MAX_TX_FAILURE_EVENT_ID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_event_max_tx_failure(%struct.wl1271* %0, i64 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @DEBUG_EVENT, align 4
  %6 = call i32 @wl1271_debug(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @wlcore_disconnect_sta(%struct.wl1271* %7, i64 %8)
  ret void
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wlcore_disconnect_sta(%struct.wl1271*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
