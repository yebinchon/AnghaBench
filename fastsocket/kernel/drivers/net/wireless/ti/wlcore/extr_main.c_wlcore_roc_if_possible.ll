; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_if_possible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_roc_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32 }

@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_roc_if_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_roc_if_possible(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %5 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %6 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %9 = call i64 @find_first_bit(i32 %7, i64 %8)
  %10 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %15 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %36

23:                                               ; preds = %13
  %24 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %30 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wl12xx_roc(%struct.wl1271* %24, %struct.wl12xx_vif* %25, i64 %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %23, %22, %12
  ret void
}

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wl12xx_roc(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
