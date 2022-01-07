; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_allocate_frame_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_allocate_frame_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@FRAME_NUM = common dso_local global i32 0, align 4
@CPIA_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_data*)* @allocate_frame_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_frame_buf(%struct.cam_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cam_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_data* %0, %struct.cam_data** %3, align 8
  %5 = load i32, i32* @FRAME_NUM, align 4
  %6 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %7 = mul nsw i32 %5, %6
  %8 = call i64 @rvmalloc(i32 %7)
  %9 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %10 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %12 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FRAME_NUM, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %25 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @CPIA_MAX_FRAME_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %26, %30
  %32 = load %struct.cam_data*, %struct.cam_data** %3, align 8
  %33 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %31, i64* %38, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %19

42:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @rvmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
