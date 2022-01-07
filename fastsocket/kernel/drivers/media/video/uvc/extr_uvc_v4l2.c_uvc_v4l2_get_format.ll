; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_get_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_v4l2_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32, %struct.TYPE_4__, %struct.uvc_frame*, %struct.uvc_format* }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_frame = type { i32, i32 }
%struct.uvc_format = type { i32, i32, i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_format*)* @uvc_v4l2_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_get_format(%struct.uvc_streaming* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.uvc_format*, align 8
  %7 = alloca %struct.uvc_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %13 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %100

19:                                               ; preds = %2
  %20 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %24 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %23, i32 0, i32 4
  %25 = load %struct.uvc_format*, %struct.uvc_format** %24, align 8
  store %struct.uvc_format* %25, %struct.uvc_format** %6, align 8
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 3
  %28 = load %struct.uvc_frame*, %struct.uvc_frame** %27, align 8
  store %struct.uvc_frame* %28, %struct.uvc_frame** %7, align 8
  %29 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %30 = icmp eq %struct.uvc_format* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load %struct.uvc_frame*, %struct.uvc_frame** %7, align 8
  %33 = icmp eq %struct.uvc_frame* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %95

37:                                               ; preds = %31
  %38 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %39 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  store i32 %40, i32* %44, align 8
  %45 = load %struct.uvc_frame*, %struct.uvc_frame** %7, align 8
  %46 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.uvc_frame*, %struct.uvc_frame** %7, align 8
  %53 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %60 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 %59, i32* %63, align 8
  %64 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %65 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uvc_frame*, %struct.uvc_frame** %7, align 8
  %68 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = sdiv i32 %70, 8
  %72 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %77 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  store i32 %79, i32* %83, align 4
  %84 = load %struct.uvc_format*, %struct.uvc_format** %6, align 8
  %85 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i32 %86, i32* %90, align 8
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %37, %34
  %96 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %97 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
