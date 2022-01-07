; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_set_pending_regdomain_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_set_pending_regdomain_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64 }

@WLCORE_QUIRK_REGDOMAIN_CONF = common dso_local global i32 0, align 4
@WL1271_MAX_CHANNELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlcore_set_pending_regdomain_ch(%struct.wl1271* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @WLCORE_QUIRK_REGDOMAIN_CONF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %32

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wlcore_get_reg_conf_ch_idx(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @WL1271_MAX_CHANNELS, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %28 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i64*
  %31 = call i32 @set_bit(i32 %26, i64* %30)
  br label %32

32:                                               ; preds = %14, %25, %21, %15
  ret void
}

declare dso_local i32 @wlcore_get_reg_conf_ch_idx(i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
