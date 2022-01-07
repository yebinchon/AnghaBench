; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_vidioc_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MEYE_BUF_DONE = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@gbufsize = common dso_local global i32 0, align 4
@MEYE_BUF_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %120

17:                                               ; preds = %3
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2), align 8
  %20 = call i64 @kfifo_len(i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %120

33:                                               ; preds = %22, %17
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 3), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2), align 8
  %36 = call i64 @kfifo_len(i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @wait_event_interruptible(i32 %34, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %43 = load i32, i32* @EINTR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %120

45:                                               ; preds = %33
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 2), align 8
  %47 = bitcast i32* %8 to i8*
  %48 = call i32 @kfifo_get(i32 %46, i8* %47, i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %120

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MEYE_BUF_DONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %120

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %80 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %83 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %102 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @gbufsize, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @gbufsize, align 4
  %111 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load i64, i64* @MEYE_BUF_UNUSED, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 1), align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i64 %113, i64* %118, align 8
  %119 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @meye, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %67, %63, %50, %41, %29, %14
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @kfifo_len(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @kfifo_get(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
