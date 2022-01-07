; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c___wlcore_roc_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c___wlcore_roc_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32* }
%struct.wl12xx_vif = type { i32 }

@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @__wlcore_roc_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wlcore_roc_completed(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(i32* %18)
  store %struct.wl12xx_vif* %19, %struct.wl12xx_vif** %4, align 8
  %20 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %15
  %29 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %31 = call i32 @wl12xx_stop_dev(%struct.wl1271* %29, %struct.wl12xx_vif* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %34, %25, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_stop_dev(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
