; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.videobuf_queue*, i32*, i32*)* }
%struct.v4l2_requestbuffers = type { i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"reqbufs: count invalid (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_MEMORY_OVERLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"reqbufs: memory type invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"reqbufs: queue type invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"reqbufs: streaming already exists\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"reqbufs: stream running\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"reqbufs: bufs=%d, size=0x%x [%u pages total]\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"reqbufs: mmap setup returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_reqbufs(%struct.videobuf_queue* %0, %struct.v4l2_requestbuffers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.v4l2_requestbuffers*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.v4l2_requestbuffers* %1, %struct.v4l2_requestbuffers** %5, align 8
  %9 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @V4L2_MEMORY_OVERLAY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %32, %26, %20
  %43 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %44 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %43)
  %45 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %49 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %116

56:                                               ; preds = %42
  %57 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %58 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %116

65:                                               ; preds = %56
  %66 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %67 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %66, i32 0, i32 2
  %68 = call i32 @list_empty(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %116

74:                                               ; preds = %65
  %75 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %74
  store i32 0, i32* %6, align 4
  %84 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %85 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.videobuf_queue*, i32*, i32*)*, i32 (%struct.videobuf_queue*, i32*, i32*)** %87, align 8
  %89 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %90 = call i32 %88(%struct.videobuf_queue* %89, i32* %7, i32* %6)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @PAGE_ALIGN(i32 %94)
  %96 = mul i32 %93, %95
  %97 = load i32, i32* @PAGE_SHIFT, align 4
  %98 = lshr i32 %96, %97
  %99 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %91, i32 %92, i32 %98)
  %100 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__videobuf_mmap_setup(%struct.videobuf_queue* %100, i32 %101, i32 %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %83
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  br label %116

112:                                              ; preds = %83
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %112, %109, %70, %61, %52
  %117 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %118 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %117)
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %38, %13
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @__videobuf_mmap_setup(%struct.videobuf_queue*, i32, i32, i32) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
