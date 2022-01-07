; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_read_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_read_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, i8* }
%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32, i32, i8*, i8* }
%struct.v4l2_requestbuffers = type { i32, i32, i8*, i8* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"read alloc\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@GSPCA_MEMORY_READ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"read reqbuf err %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"read qbuf err: %d\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"read streamon err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.file*)* @read_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_alloc(%struct.gspca_dev* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_buffer, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_requestbuffers, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @D_STREAM, align 4
  %11 = call i32 (i32, i8*, ...) @PDEBUG(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %2
  %17 = call i32 @memset(%struct.v4l2_requestbuffers* %9, i32 0, i32 24)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %23 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @GSPCA_MEMORY_READ, align 8
  %25 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %9, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %28 = call i32 @vidioc_reqbufs(%struct.file* %26, %struct.gspca_dev* %27, %struct.v4l2_requestbuffers* %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load i32, i32* @D_STREAM, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, ...) @PDEBUG(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %16
  %37 = bitcast %struct.v4l2_buffer* %6 to %struct.v4l2_requestbuffers*
  %38 = call i32 @memset(%struct.v4l2_requestbuffers* %37, i32 0, i32 24)
  %39 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 3
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** @GSPCA_MEMORY_READ, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 2
  store i8* %41, i8** %42, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %64, %36
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %54 = bitcast %struct.v4l2_buffer* %6 to %struct.v4l2_requestbuffers*
  %55 = call i32 @vidioc_qbuf(%struct.file* %52, %struct.gspca_dev* %53, %struct.v4l2_requestbuffers* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i32, i32* @D_STREAM, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i32, i8*, ...) @PDEBUG(i32 %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %84

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load i8*, i8** @GSPCA_MEMORY_READ, align 8
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %2
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %74 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %75 = call i32 @vidioc_streamon(%struct.file* %72, %struct.gspca_dev* %73, i8* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @D_STREAM, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i32, i8*, ...) @PDEBUG(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %58, %31
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.v4l2_requestbuffers*, i32, i32) #1

declare dso_local i32 @vidioc_reqbufs(%struct.file*, %struct.gspca_dev*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @vidioc_qbuf(%struct.file*, %struct.gspca_dev*, %struct.v4l2_requestbuffers*) #1

declare dso_local i32 @vidioc_streamon(%struct.file*, %struct.gspca_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
