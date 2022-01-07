; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_set_camera_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_set_camera_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@COMMAND_SETCOMPRESSION = common dso_local global i32 0, align 4
@COMMAND_SETCOMPRESSIONTARGET = common dso_local global i32 0, align 4
@COMMAND_SETCOLOURPARAMS = common dso_local global i32 0, align 4
@COMMAND_SETFORMAT = common dso_local global i32 0, align 4
@COMMAND_SETYUVTHRESH = common dso_local global i32 0, align 4
@COMMAND_SETECPTIMING = common dso_local global i32 0, align 4
@COMMAND_SETCOMPRESSIONPARAMS = common dso_local global i32 0, align 4
@COMMAND_SETEXPOSURE = common dso_local global i32 0, align 4
@COMMAND_SETCOLOURBALANCE = common dso_local global i32 0, align 4
@COMMAND_SETSENSORFPS = common dso_local global i32 0, align 4
@COMMAND_SETAPCOR = common dso_local global i32 0, align 4
@COMMAND_SETFLICKERCTRL = common dso_local global i32 0, align 4
@COMMAND_SETVLOFFSET = common dso_local global i32 0, align 4
@CPIA_COMMAND_SetGrabMode = common dso_local global i32 0, align 4
@CPIA_GRAB_SINGLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*)* @set_camera_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_camera_state(%struct.cam_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %3, align 8
  %4 = load i32, i32* @COMMAND_SETCOMPRESSION, align 4
  %5 = load i32, i32* @COMMAND_SETCOMPRESSIONTARGET, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @COMMAND_SETCOLOURPARAMS, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @COMMAND_SETFORMAT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @COMMAND_SETYUVTHRESH, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @COMMAND_SETECPTIMING, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @COMMAND_SETCOMPRESSIONPARAMS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @COMMAND_SETCOLOURBALANCE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @COMMAND_SETSENSORFPS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @COMMAND_SETAPCOR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @COMMAND_SETFLICKERCTRL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @COMMAND_SETVLOFFSET, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %30 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %32 = load i32, i32* @CPIA_COMMAND_SetGrabMode, align 4
  %33 = load i32, i32* @CPIA_GRAB_SINGLE, align 4
  %34 = call i32 @do_command(%struct.cam_data* %31, i32 %32, i32 %33, i32 0, i32 0, i32 0)
  %35 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %36 = call i32 @dispatch_commands(%struct.cam_data* %35)
  %37 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %38 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 33, i32 40
  %45 = mul nsw i32 6, %44
  %46 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %47 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = mul nsw i32 %45, %51
  %53 = add nsw i32 %52, 10
  %54 = call i32 @msleep_interruptible(i32 %53)
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @EINTR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %1
  %62 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %63 = call i32 @save_camera_state(%struct.cam_data* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispatch_commands(%struct.cam_data*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @save_camera_state(%struct.cam_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
