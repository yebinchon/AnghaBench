; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_clear_stall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_clear_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [16 x i8] c"Clearing stall\0A\00", align 1
@CPIA_COMMAND_GetCameraStatus = common dso_local global i32 0, align 4
@STREAM_PAUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*)* @clear_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_stall(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %3 = call i32 @LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %5 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %7, align 8
  %9 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %10 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %13 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 %8(i32 %11, i32 %14, i32 0)
  %16 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %17 = load i32, i32* @CPIA_COMMAND_GetCameraStatus, align 4
  %18 = call i32 @do_command(%struct.cam_data* %16, i32 %17, i32 0, i32 0, i32 0, i32 0)
  %19 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %20 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STREAM_PAUSED, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @do_command(%struct.cam_data*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
