; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_join.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32 }

@BSS_TYPE_IBSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"JOIN while associated.\00", align 1
@KEY_NONE = common dso_local global i32 0, align 4
@WLCORE_QUIRK_START_STA_FAILS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_join(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %7 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %8 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BSS_TYPE_IBSS, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %14 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %15 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @wl1271_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* @KEY_NONE, align 4
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %29 = call i32 @wl12xx_cmd_role_start_ibss(%struct.wl1271* %27, %struct.wl12xx_vif* %28)
  store i32 %29, i32* %5, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @WLCORE_QUIRK_START_STA_FAILS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %39 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %40 = call i32 @wl12xx_cmd_role_start_sta(%struct.wl1271* %38, %struct.wl12xx_vif* %39)
  %41 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %42 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %43 = call i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271* %41, %struct.wl12xx_vif* %42)
  br label %44

44:                                               ; preds = %37, %30
  %45 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %47 = call i32 @wl12xx_cmd_role_start_sta(%struct.wl1271* %45, %struct.wl12xx_vif* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %26
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl1271_info(i8*) #1

declare dso_local i32 @wl12xx_cmd_role_start_ibss(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_start_sta(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
