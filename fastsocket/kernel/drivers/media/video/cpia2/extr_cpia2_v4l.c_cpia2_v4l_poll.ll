; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_v4l_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_cpia2_v4l_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cpia2_fh* }
%struct.cpia2_fh = type { i64 }
%struct.poll_table_struct = type { i32 }
%struct.camera_data = type { i32 }

@POLLERR = common dso_local global i32 0, align 4
@V4L2_PRIORITY_RECORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @cpia2_v4l_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia2_v4l_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.camera_data*, align 8
  %7 = alloca %struct.cpia2_fh*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.camera_data* @video_drvdata(%struct.file* %8)
  store %struct.camera_data* %9, %struct.camera_data** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cpia2_fh*, %struct.cpia2_fh** %11, align 8
  store %struct.cpia2_fh* %12, %struct.cpia2_fh** %7, align 8
  %13 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %14 = icmp ne %struct.camera_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @POLLERR, align 4
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.cpia2_fh*, %struct.cpia2_fh** %7, align 8
  %19 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_PRIORITY_RECORD, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @POLLERR, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %29 = call i32 @cpia2_poll(%struct.camera_data* %26, %struct.file* %27, %struct.poll_table_struct* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.camera_data* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cpia2_poll(%struct.camera_data*, %struct.file*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
