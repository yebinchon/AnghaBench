; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_qbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_qbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.gspca_dev = type { i32, i64, i32*, i32, i32, %struct.gspca_frame* }
%struct.gspca_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qbuf %d\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"qbuf idx %d >= %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"qbuf bad memory type\00", align 1
@BUF_ALL_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"qbuf bad state\00", align 1
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@GSPCA_MAX_FRAMES = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vidioc_qbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_qbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.gspca_frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.gspca_dev*
  store %struct.gspca_dev* %14, %struct.gspca_dev** %8, align 8
  %15 = load i32, i32* @D_FRAM, align 4
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @PDEBUG(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 3
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %139

27:                                               ; preds = %3
  %28 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load i32, i32* @D_FRAM, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @PDEBUG(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %134

45:                                               ; preds = %27
  %46 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* @D_FRAM, align 4
  %55 = call i32 (i32, i8*, ...) @PDEBUG(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %134

58:                                               ; preds = %45
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 5
  %61 = load %struct.gspca_frame*, %struct.gspca_frame** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %61, i64 %63
  store %struct.gspca_frame* %64, %struct.gspca_frame** %9, align 8
  %65 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %66 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @BUF_ALL_FLAGS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %58
  %73 = load i32, i32* @D_FRAM, align 4
  %74 = call i32 (i32, i8*, ...) @PDEBUG(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %134

77:                                               ; preds = %58
  %78 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %79 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %80 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %85 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %77
  %91 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %96 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %94, i32* %98, align 4
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gspca_frame*, %struct.gspca_frame** %9, align 8
  %103 = getelementptr inbounds %struct.gspca_frame, %struct.gspca_frame* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %90, %77
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %107 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %106, i32 0, i32 4
  %108 = call i32 @atomic_read(i32* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %111 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %117 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* @GSPCA_MAX_FRAMES, align 4
  %121 = srem i32 %119, %120
  %122 = call i32 @atomic_set(i32* %117, i32 %121)
  %123 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %124 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %125 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %105, %72, %53, %36
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %136 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %135, i32 0, i32 3
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %24
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
