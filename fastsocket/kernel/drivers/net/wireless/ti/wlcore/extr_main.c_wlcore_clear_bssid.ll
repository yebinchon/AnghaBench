; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_clear_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_clear_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32 }

@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@WLVIF_FLAG_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wlcore_clear_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_clear_bssid(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = call i32 @wl1271_set_band_rate(%struct.wl1271* %7, %struct.wl12xx_vif* %8)
  %10 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %12 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %10, i32 %13)
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %19 = call i32 @wl1271_acx_sta_rate_policies(%struct.wl1271* %17, %struct.wl12xx_vif* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i32, i32* @WLVIF_FLAG_IN_USE, align 4
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %39 = call i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271* %37, %struct.wl12xx_vif* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %30, %24
  %46 = load i32, i32* @WLVIF_FLAG_IN_USE, align 4
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %48 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %47, i32 0, i32 1
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %42, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @wl1271_set_band_rate(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_acx_sta_rate_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
