; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_phy_vif_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_phy_vif_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32 }

@DEFAULT_SLOT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_init_phy_vif_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_init_phy_vif_config(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = load i32, i32* @DEFAULT_SLOT_TIME, align 4
  %10 = call i32 @wl1271_acx_slot(%struct.wl1271* %7, %struct.wl12xx_vif* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %18 = call i32 @wl1271_acx_service_period_timeout(%struct.wl1271* %16, %struct.wl12xx_vif* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wl1271_acx_rts_threshold(%struct.wl1271* %24, %struct.wl12xx_vif* %25, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %21, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wl1271_acx_slot(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_service_period_timeout(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_rts_threshold(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
