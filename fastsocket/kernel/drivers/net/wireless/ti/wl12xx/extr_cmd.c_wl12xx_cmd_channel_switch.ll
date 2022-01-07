; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl12xx_cmd_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_cmd.c_wl12xx_cmd_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_cmd_channel_switch = type { i64, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd channel switch\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to send channel switch command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_channel_switch(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.wl12xx_cmd_channel_switch*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl12xx_cmd_channel_switch* @kzalloc(i32 24, i32 %11)
  store %struct.wl12xx_cmd_channel_switch* %12, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %13 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %14 = icmp ne %struct.wl12xx_cmd_channel_switch* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %23 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, %struct.wl12xx_cmd_channel_switch* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %31 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, %struct.wl12xx_cmd_channel_switch* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %36 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, %struct.wl12xx_cmd_channel_switch* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %41 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, %struct.wl12xx_cmd_channel_switch* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %43 = getelementptr inbounds %struct.wl12xx_cmd_channel_switch, %struct.wl12xx_cmd_channel_switch* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %45 = load i32, i32* @CMD_CHANNEL_SWITCH, align 4
  %46 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %47 = call i32 @wl1271_cmd_send(%struct.wl1271* %44, i32 %45, %struct.wl12xx_cmd_channel_switch* %46, i32 24, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %18
  %51 = call i32 @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %53

52:                                               ; preds = %18
  br label %53

53:                                               ; preds = %52, %50
  %54 = load %struct.wl12xx_cmd_channel_switch*, %struct.wl12xx_cmd_channel_switch** %7, align 8
  %55 = call i32 @kfree(%struct.wl12xx_cmd_channel_switch* %54)
  br label %56

56:                                               ; preds = %53, %15
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl12xx_cmd_channel_switch* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_channel_switch*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_channel_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
