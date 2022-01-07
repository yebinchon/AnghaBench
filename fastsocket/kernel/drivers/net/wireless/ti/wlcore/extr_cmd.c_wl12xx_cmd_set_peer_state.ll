; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_set_peer_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_set_peer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32 }
%struct.wl12xx_cmd_set_peer_state = type { i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cmd set peer state (hlid=%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_CMD_STA_STATE_CONNECTED = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@CMD_SET_PEER_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to send set peer state command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_set_peer_state(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl12xx_cmd_set_peer_state*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_CMD, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl12xx_cmd_set_peer_state* @kzalloc(i32 12, i32 %12)
  store %struct.wl12xx_cmd_set_peer_state* %13, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %14 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %15 = icmp ne %struct.wl12xx_cmd_set_peer_state* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %22 = getelementptr inbounds %struct.wl12xx_cmd_set_peer_state, %struct.wl12xx_cmd_set_peer_state* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @WL1271_CMD_STA_STATE_CONNECTED, align 4
  %24 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %25 = getelementptr inbounds %struct.wl12xx_cmd_set_peer_state, %struct.wl12xx_cmd_set_peer_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %36 = getelementptr inbounds %struct.wl12xx_cmd_set_peer_state, %struct.wl12xx_cmd_set_peer_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %19
  %38 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %39 = load i32, i32* @CMD_SET_PEER_STATE, align 4
  %40 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %41 = call i32 @wl1271_cmd_send(%struct.wl1271* %38, i32 %39, %struct.wl12xx_cmd_set_peer_state* %40, i32 12, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %47

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %44
  %48 = load %struct.wl12xx_cmd_set_peer_state*, %struct.wl12xx_cmd_set_peer_state** %7, align 8
  %49 = call i32 @kfree(%struct.wl12xx_cmd_set_peer_state* %48)
  br label %50

50:                                               ; preds = %47, %16
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl12xx_cmd_set_peer_state* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_set_peer_state*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_set_peer_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
