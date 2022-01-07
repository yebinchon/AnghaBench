; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_goto_low_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_goto_low_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@CPIA_COMMAND_GotoLoPower = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@LO_POWER_STATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"camera now in LOW power state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*)* @goto_low_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goto_low_power(%struct.cam_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %3, align 8
  %4 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %5 = load i32, i32* @CPIA_COMMAND_GotoLoPower, align 4
  %6 = call i64 @do_command(%struct.cam_data* %4, i32 %5, i32 0, i32 0, i32 0, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  %10 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %11 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %12 = call i64 @do_command(%struct.cam_data* %10, i32 %11, i32 0, i32 0, i32 0, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %17 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LO_POWER_STATE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %27 = call i32 @printstatus(%struct.cam_data* %26)
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %14, %8
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @printstatus(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
