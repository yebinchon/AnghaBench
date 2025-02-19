; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_allocate_rate_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_allocate_rate_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@WL12XX_MAX_RATE_POLICIES = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64*)* @wl12xx_allocate_rate_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_allocate_rate_policy(%struct.wl1271* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* @WL12XX_MAX_RATE_POLICIES, align 8
  %11 = call i64 @find_first_zero_bit(i32 %9, i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @WL12XX_MAX_RATE_POLICIES, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__set_bit(i64 %19, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i64*, i64** %5, align 8
  store i64 %24, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
