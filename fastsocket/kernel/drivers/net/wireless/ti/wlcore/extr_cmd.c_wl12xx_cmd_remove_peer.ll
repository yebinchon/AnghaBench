; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_remove_peer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_remove_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, i32, i32*)* }
%struct.wl12xx_cmd_remove_peer = type { i64, i64, i64 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cmd remove peer %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_REMOVE_PEER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to initiate cmd remove peer\00", align 1
@WLCORE_EVENT_PEER_REMOVE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_remove_peer(%struct.wl1271* %0, i64 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wl12xx_cmd_remove_peer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @DEBUG_CMD, align 4
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl12xx_cmd_remove_peer* @kzalloc(i32 24, i32 %12)
  store %struct.wl12xx_cmd_remove_peer* %13, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %14 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %15 = icmp ne %struct.wl12xx_cmd_remove_peer* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %22 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %24 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %26 = getelementptr inbounds %struct.wl12xx_cmd_remove_peer, %struct.wl12xx_cmd_remove_peer* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %28 = load i32, i32* @CMD_REMOVE_PEER, align 4
  %29 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %30 = call i32 @wl1271_cmd_send(%struct.wl1271* %27, i32 %28, %struct.wl12xx_cmd_remove_peer* %29, i32 24, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %50

35:                                               ; preds = %19
  %36 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.wl1271*, i32, i32*)*, i32 (%struct.wl1271*, i32, i32*)** %39, align 8
  %41 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %42 = load i32, i32* @WLCORE_EVENT_PEER_REMOVE_COMPLETE, align 4
  %43 = call i32 %40(%struct.wl1271* %41, i32 %42, i32* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %48 = call i32 @wl12xx_queue_recovery_work(%struct.wl1271* %47)
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49, %33
  %51 = load %struct.wl12xx_cmd_remove_peer*, %struct.wl12xx_cmd_remove_peer** %5, align 8
  %52 = call i32 @kfree(%struct.wl12xx_cmd_remove_peer* %51)
  br label %53

53:                                               ; preds = %50, %16
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl12xx_cmd_remove_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_remove_peer*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_queue_recovery_work(%struct.wl1271*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_remove_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
