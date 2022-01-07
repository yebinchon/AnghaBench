; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_sta_role.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_sta_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_init_sta_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_init_sta_role(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = call i32 @wl1271_acx_group_address_tbl(%struct.wl1271* %7, %struct.wl12xx_vif* %8, i32 1, i32* null, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %17 = call i32 @wl1271_acx_conn_monit_params(%struct.wl1271* %15, %struct.wl12xx_vif* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %47

22:                                               ; preds = %14
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %25 = call i32 @wl1271_init_sta_beacon_filter(%struct.wl1271* %23, %struct.wl12xx_vif* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = call i32 @wl1271_init_beacon_broadcast(%struct.wl1271* %31, %struct.wl12xx_vif* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %41 = call i32 @wl1271_acx_rssi_snr_avg_weights(%struct.wl1271* %39, %struct.wl12xx_vif* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %36, %28, %20, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @wl1271_acx_group_address_tbl(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32*, i32) #1

declare dso_local i32 @wl1271_acx_conn_monit_params(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_init_sta_beacon_filter(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_init_beacon_broadcast(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_rssi_snr_avg_weights(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
