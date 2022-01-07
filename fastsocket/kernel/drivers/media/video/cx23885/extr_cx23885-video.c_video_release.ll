; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-video.c_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.cx23885_dev* }
%struct.TYPE_7__ = type { %struct.cx23885_fh* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.cx23885_dev = type { i32 }

@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@RESOURCE_VIDEO = common dso_local global i32 0, align 4
@RESOURCE_VBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cx23885_fh*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.cx23885_fh*, %struct.cx23885_fh** %6, align 8
  store %struct.cx23885_fh* %7, %struct.cx23885_fh** %3, align 8
  %8 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %9 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %8, i32 0, i32 2
  %10 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %4, align 8
  %11 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %12 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %13 = call i64 @res_check(%struct.cx23885_fh* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %17 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %18 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %19 = call i32 @res_free(%struct.cx23885_dev* %16, %struct.cx23885_fh* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %22 = load i32, i32* @RESOURCE_VIDEO, align 4
  %23 = call i64 @res_check(%struct.cx23885_fh* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %27 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %26, i32 0, i32 0
  %28 = call i32 @videobuf_queue_cancel(%struct.TYPE_7__* %27)
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %30 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %31 = load i32, i32* @RESOURCE_VIDEO, align 4
  %32 = call i32 @res_free(%struct.cx23885_dev* %29, %struct.cx23885_fh* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %35 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.cx23885_fh*, %struct.cx23885_fh** %36, align 8
  %38 = icmp ne %struct.cx23885_fh* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %41 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %40, i32 0, i32 0
  %42 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %43 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.cx23885_fh*, %struct.cx23885_fh** %44, align 8
  %46 = call i32 @buffer_release(%struct.TYPE_7__* %41, %struct.cx23885_fh* %45)
  %47 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %48 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.cx23885_fh*, %struct.cx23885_fh** %49, align 8
  %51 = call i32 @kfree(%struct.cx23885_fh* %50)
  br label %52

52:                                               ; preds = %39, %33
  %53 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %54 = load i32, i32* @RESOURCE_VBI, align 4
  %55 = call i64 @res_check(%struct.cx23885_fh* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %52
  %58 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %59 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %65 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %64, i32 0, i32 1
  %66 = call i32 @videobuf_streamoff(%struct.TYPE_6__* %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %69 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %75 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %74, i32 0, i32 1
  %76 = call i32 @videobuf_read_stop(%struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %79 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %80 = load i32, i32* @RESOURCE_VBI, align 4
  %81 = call i32 @res_free(%struct.cx23885_dev* %78, %struct.cx23885_fh* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %52
  %83 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %84 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %83, i32 0, i32 0
  %85 = call i32 @videobuf_mmap_free(%struct.TYPE_7__* %84)
  %86 = load %struct.file*, %struct.file** %2, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  store %struct.cx23885_fh* null, %struct.cx23885_fh** %87, align 8
  %88 = load %struct.cx23885_fh*, %struct.cx23885_fh** %3, align 8
  %89 = call i32 @kfree(%struct.cx23885_fh* %88)
  ret i32 0
}

declare dso_local i64 @res_check(%struct.cx23885_fh*, i32) #1

declare dso_local i32 @res_free(%struct.cx23885_dev*, %struct.cx23885_fh*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.TYPE_7__*) #1

declare dso_local i32 @buffer_release(%struct.TYPE_7__*, %struct.cx23885_fh*) #1

declare dso_local i32 @kfree(%struct.cx23885_fh*) #1

declare dso_local i32 @videobuf_streamoff(%struct.TYPE_6__*) #1

declare dso_local i32 @videobuf_read_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
