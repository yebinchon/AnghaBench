; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_get_role_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_get_role_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }

@WL1271_ROLE_P2P_GO = common dso_local global i32 0, align 4
@WL1271_ROLE_AP = common dso_local global i32 0, align 4
@WL1271_ROLE_P2P_CL = common dso_local global i32 0, align 4
@WL1271_ROLE_STA = common dso_local global i32 0, align 4
@WL1271_ROLE_IBSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid bss_type: %d\00", align 1
@WL12XX_INVALID_ROLE_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_get_role_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_get_role_type(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %6 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %7 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 128, label %18
    i32 129, label %27
  ]

9:                                                ; preds = %2
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @WL1271_ROLE_P2P_GO, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load i32, i32* @WL1271_ROLE_AP, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @WL1271_ROLE_P2P_CL, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i32, i32* @WL1271_ROLE_STA, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @WL1271_ROLE_IBSS, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wl1271_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @WL12XX_INVALID_ROLE_TYPE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %27, %25, %23, %16, %14
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @wl1271_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
