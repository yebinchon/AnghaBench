; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_queue.c_uvc_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_queue = type { i32, i32, i32, i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@UVC_MAX_VIDEO_BUFFERS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvc_alloc_buffers(%struct.uvc_video_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uvc_video_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.uvc_video_queue* %0, %struct.uvc_video_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @PAGE_ALIGN(i32 %11)
  store i32 %12, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @UVC_MAX_VIDEO_BUFFERS, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @UVC_MAX_VIDEO_BUFFERS, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %23 = call i32 @__uvc_free_buffers(%struct.uvc_video_queue* %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %154

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %154

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %35, %36
  %38 = call i8* @vmalloc_32(i32 %37)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %31

46:                                               ; preds = %41, %31
  %47 = load i8*, i8** %9, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %154

52:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %140, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %143

57:                                               ; preds = %53
  %58 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %59 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = call i32 @memset(%struct.TYPE_6__* %63, i32 0, i32 40)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %67 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %65, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = mul i32 %74, %75
  %77 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %78 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %77, i32 0, i32 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %76, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %88 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %86, i32* %94, align 4
  %95 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %96 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %99 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  store i32 %97, i32* %105, align 8
  %106 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %107 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %108 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %107, i32 0, i32 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i32 %106, i32* %114, align 4
  %115 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %116 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %117 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %116, i32 0, i32 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store i32 %115, i32* %123, align 8
  %124 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %125 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %124, i32 0, i32 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %133 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = call i32 @init_waitqueue_head(i32* %138)
  br label %140

140:                                              ; preds = %57
  %141 = load i32, i32* %8, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %53

143:                                              ; preds = %53
  %144 = load i8*, i8** %9, align 8
  %145 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %146 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %149 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %152 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %143, %49, %29, %25
  %155 = load %struct.uvc_video_queue*, %struct.uvc_video_queue** %4, align 8
  %156 = getelementptr inbounds %struct.uvc_video_queue, %struct.uvc_video_queue* %155, i32 0, i32 2
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__uvc_free_buffers(%struct.uvc_video_queue*) #1

declare dso_local i8* @vmalloc_32(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
