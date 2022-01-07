; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vivi_fh* }
%struct.vivi_fh = type { i64, i32, i32, i32, i32*, %struct.vivi_dev* }
%struct.vivi_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"open /dev/video%d type=%s users=%d\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@formats = common dso_local global i32* null, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%02d:%02d:%02d:%03d\00", align 1
@vivi_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vivi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivi_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vivi_dev*, align 8
  %5 = alloca %struct.vivi_fh*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.vivi_dev* @video_drvdata(%struct.file* %7)
  store %struct.vivi_dev* %8, %struct.vivi_dev** %4, align 8
  store %struct.vivi_fh* null, %struct.vivi_fh** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %10 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %9, i32 0, i32 9
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %17 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %25, i32 0, i32 9
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %123

30:                                               ; preds = %1
  %31 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %32 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %33 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %32, i32 0, i32 10
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @v4l2_type_names, align 8
  %38 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %42 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dprintk(%struct.vivi_dev* %31, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.vivi_fh* @kzalloc(i32 40, i32 %45)
  store %struct.vivi_fh* %46, %struct.vivi_fh** %5, align 8
  %47 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %48 = icmp eq %struct.vivi_fh* null, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %51 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %30
  %57 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %58 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %57, i32 0, i32 9
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %123

64:                                               ; preds = %56
  %65 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %66 = load %struct.file*, %struct.file** %3, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 0
  store %struct.vivi_fh* %65, %struct.vivi_fh** %67, align 8
  %68 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %69 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %70 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %69, i32 0, i32 5
  store %struct.vivi_dev* %68, %struct.vivi_dev** %70, align 8
  %71 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %72 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %73 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32*, i32** @formats, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %77 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %79 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %78, i32 0, i32 1
  store i32 640, i32* %79, align 8
  %80 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %81 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %80, i32 0, i32 2
  store i32 480, i32* %81, align 4
  %82 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %83 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %85 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %84, i32 0, i32 2
  store i32 0, i32* %85, align 8
  %86 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %87 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  %88 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %89 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %88, i32 0, i32 4
  store i32 0, i32* %89, align 8
  %90 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %91 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @jiffies, align 4
  %93 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %94 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  %95 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %96 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %99 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %102 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %105 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %108 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sprintf(i32 %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %112 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %111, i32 0, i32 3
  %113 = load %struct.vivi_dev*, %struct.vivi_dev** %4, align 8
  %114 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %113, i32 0, i32 5
  %115 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %116 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %119 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %120 = call i32 @videobuf_queue_vmalloc_init(i32* %112, i32* @vivi_video_qops, i32* null, i32* %114, i64 %117, i32 %118, i32 4, %struct.vivi_fh* %119)
  %121 = load %struct.vivi_fh*, %struct.vivi_fh** %5, align 8
  %122 = call i32 @vivi_start_thread(%struct.vivi_fh* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %64, %62, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.vivi_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dprintk(%struct.vivi_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.vivi_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i64, i32, i32, %struct.vivi_fh*) #1

declare dso_local i32 @vivi_start_thread(%struct.vivi_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
