; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @brcms_c_detach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %6 = icmp eq %struct.brcms_c_info* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %10 = call i64 @brcms_b_detach(%struct.brcms_c_info* %9)
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %11, %10
  store i64 %12, i64* %4, align 8
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %14 = call i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16, %8
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @brcms_c_channel_mgr_detach(i32 %22)
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %25 = call i32 @brcms_c_timers_deinit(%struct.brcms_c_info* %24)
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %27 = call i32 @brcms_c_detach_module(%struct.brcms_c_info* %26)
  %28 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %29 = call i32 @brcms_c_detach_mfree(%struct.brcms_c_info* %28)
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %19, %7
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i64 @brcms_b_detach(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_radio_monitor_stop(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_channel_mgr_detach(i32) #1

declare dso_local i32 @brcms_c_timers_deinit(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_detach_module(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_detach_mfree(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
