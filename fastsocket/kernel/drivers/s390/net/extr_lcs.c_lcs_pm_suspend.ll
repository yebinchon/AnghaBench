; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i32, i64 }

@DEV_STATE_DOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*)* @lcs_pm_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_pm_suspend(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %3 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %4 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %9 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @netif_device_detach(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %14 = call i32 @lcs_set_allowed_threads(%struct.lcs_card* %13, i32 0)
  %15 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %16 = call i32 @lcs_wait_for_threads(%struct.lcs_card* %15, i32 -1)
  %17 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %18 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DEV_STATE_DOWN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %24 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @__lcs_shutdown_device(i32 %25, i32 1)
  br label %27

27:                                               ; preds = %22, %12
  ret i32 0
}

declare dso_local i32 @netif_device_detach(i64) #1

declare dso_local i32 @lcs_set_allowed_threads(%struct.lcs_card*, i32) #1

declare dso_local i32 @lcs_wait_for_threads(%struct.lcs_card*, i32) #1

declare dso_local i32 @__lcs_shutdown_device(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
