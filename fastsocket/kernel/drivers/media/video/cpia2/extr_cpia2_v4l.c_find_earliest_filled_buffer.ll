; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_find_earliest_filled_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_find_earliest_filled_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.timeval }
%struct.timeval = type { i64, i64 }

@FRAME_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @find_earliest_filled_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_earliest_filled_buffer(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %72, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %7
  %14 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FRAME_READY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %24
  %30 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %31 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store %struct.timeval* %36, %struct.timeval** %5, align 8
  %37 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %38 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store %struct.timeval* %43, %struct.timeval** %6, align 8
  %44 = load %struct.timeval*, %struct.timeval** %5, align 8
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.timeval*, %struct.timeval** %6, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %29
  %52 = load %struct.timeval*, %struct.timeval** %5, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.timeval*, %struct.timeval** %6, align 8
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load %struct.timeval*, %struct.timeval** %5, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.timeval*, %struct.timeval** %6, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59, %29
  %68 = load i32, i32* %3, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %59, %51
  br label %70

70:                                               ; preds = %69, %27
  br label %71

71:                                               ; preds = %70, %13
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %7

75:                                               ; preds = %7
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
