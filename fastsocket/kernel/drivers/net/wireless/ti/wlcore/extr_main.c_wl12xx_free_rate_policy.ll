; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_free_rate_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_free_rate_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }

@WL12XX_MAX_RATE_POLICIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i64*)* @wl12xx_free_rate_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_free_rate_policy(%struct.wl1271* %0, i64* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WL12XX_MAX_RATE_POLICIES, align 8
  %8 = icmp sge i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %22

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__clear_bit(i64 %15, i32 %18)
  %20 = load i64, i64* @WL12XX_MAX_RATE_POLICIES, align 8
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
