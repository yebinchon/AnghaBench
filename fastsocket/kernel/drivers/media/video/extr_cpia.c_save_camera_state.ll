; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_save_camera_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_save_camera_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@COMMAND_SETCOLOURBALANCE = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetColourBalance = common dso_local global i32 0, align 4
@COMMAND_SETEXPOSURE = common dso_local global i32 0, align 4
@CPIA_COMMAND_GetExposure = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d/%d/%d/%d/%d/%d/%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d/%d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @save_camera_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_camera_state(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %3 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %4 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @COMMAND_SETCOLOURBALANCE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %11 = load i32, i32* @CPIA_COMMAND_GetColourBalance, align 4
  %12 = call i32 @do_command(%struct.cam_data* %10, i32 %11, i32 0, i32 0, i32 0, i32 0)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %15 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @COMMAND_SETEXPOSURE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %22 = load i32, i32* @CPIA_COMMAND_GetExposure, align 4
  %23 = call i32 @do_command(%struct.cam_data* %21, i32 %22, i32 0, i32 0, i32 0, i32 0)
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %26 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %31 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %36 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %41 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %46 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %51 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %56 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %61 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  %66 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %67 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %72 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %77 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %75, i32 %80)
  ret void
}

declare dso_local i32 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
