; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx8800_fh* }
%struct.cx8800_fh = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.cx8800_dev* }
%struct.TYPE_6__ = type { %struct.cx8800_fh* }
%struct.cx8800_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@RESOURCE_VIDEO = common dso_local global i32 0, align 4
@RESOURCE_VBI = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cx8800_fh*, align 8
  %4 = alloca %struct.cx8800_dev*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.cx8800_fh*, %struct.cx8800_fh** %6, align 8
  store %struct.cx8800_fh* %7, %struct.cx8800_fh** %3, align 8
  %8 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %9 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %8, i32 0, i32 2
  %10 = load %struct.cx8800_dev*, %struct.cx8800_dev** %9, align 8
  store %struct.cx8800_dev* %10, %struct.cx8800_dev** %4, align 8
  %11 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %12 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %13 = call i64 @res_check(%struct.cx8800_fh* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %17 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %18 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %19 = call i32 @res_free(%struct.cx8800_dev* %16, %struct.cx8800_fh* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %22 = load i32, i32* @RESOURCE_VIDEO, align 4
  %23 = call i64 @res_check(%struct.cx8800_fh* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %27 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %26, i32 0, i32 1
  %28 = call i32 @videobuf_queue_cancel(%struct.TYPE_6__* %27)
  %29 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %30 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %31 = load i32, i32* @RESOURCE_VIDEO, align 4
  %32 = call i32 @res_free(%struct.cx8800_dev* %29, %struct.cx8800_fh* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %35 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.cx8800_fh*, %struct.cx8800_fh** %36, align 8
  %38 = icmp ne %struct.cx8800_fh* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %41 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %40, i32 0, i32 1
  %42 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %43 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.cx8800_fh*, %struct.cx8800_fh** %44, align 8
  %46 = call i32 @buffer_release(%struct.TYPE_6__* %41, %struct.cx8800_fh* %45)
  %47 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %48 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.cx8800_fh*, %struct.cx8800_fh** %49, align 8
  %51 = call i32 @kfree(%struct.cx8800_fh* %50)
  br label %52

52:                                               ; preds = %39, %33
  %53 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %54 = load i32, i32* @RESOURCE_VBI, align 4
  %55 = call i64 @res_check(%struct.cx8800_fh* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %59 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %58, i32 0, i32 0
  %60 = call i32 @videobuf_stop(%struct.TYPE_6__* %59)
  %61 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %62 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %63 = load i32, i32* @RESOURCE_VBI, align 4
  %64 = call i32 @res_free(%struct.cx8800_dev* %61, %struct.cx8800_fh* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %67 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %66, i32 0, i32 1
  %68 = call i32 @videobuf_mmap_free(%struct.TYPE_6__* %67)
  %69 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %70 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %69, i32 0, i32 0
  %71 = call i32 @videobuf_mmap_free(%struct.TYPE_6__* %70)
  %72 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %73 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 @mutex_lock(i32* %75)
  %77 = load %struct.file*, %struct.file** %2, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store %struct.cx8800_fh* null, %struct.cx8800_fh** %78, align 8
  %79 = load %struct.cx8800_fh*, %struct.cx8800_fh** %3, align 8
  %80 = call i32 @kfree(%struct.cx8800_fh* %79)
  %81 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %82 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = call i64 @atomic_dec_and_test(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %65
  %88 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %89 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* @core, align 4
  %92 = load i32, i32* @s_power, align 4
  %93 = call i32 @call_all(%struct.TYPE_7__* %90, i32 %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %87, %65
  %95 = load %struct.cx8800_dev*, %struct.cx8800_dev** %4, align 8
  %96 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  ret i32 0
}

declare dso_local i64 @res_check(%struct.cx8800_fh*, i32) #1

declare dso_local i32 @res_free(%struct.cx8800_dev*, %struct.cx8800_fh*, i32) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.TYPE_6__*) #1

declare dso_local i32 @buffer_release(%struct.TYPE_6__*, %struct.cx8800_fh*) #1

declare dso_local i32 @kfree(%struct.cx8800_fh*) #1

declare dso_local i32 @videobuf_stop(%struct.TYPE_6__*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @call_all(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
