; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_authorized.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_set_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_STATE_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Association completed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_set_authorized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_set_authorized(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %8 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 2
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load i32, i32* @WLVIF_FLAG_STA_STATE_SENT, align 4
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 2
  %29 = call i64 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %46

32:                                               ; preds = %25
  %33 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %36 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wl12xx_cmd_set_peer_state(%struct.wl1271* %33, %struct.wl12xx_vif* %34, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %32
  %45 = call i32 @wl1271_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %31, %24, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_cmd_set_peer_state(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
