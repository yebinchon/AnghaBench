; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { i64, i32, i64*, %struct.channel_obj* }
%struct.channel_obj = type { i64, i32, i64, i32, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i32, i32, i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@VPIF_CHANNEL2_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpif_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_release(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpif_fh*, align 8
  %5 = alloca %struct.channel_obj*, align 8
  %6 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  store %struct.vpif_fh* %9, %struct.vpif_fh** %4, align 8
  %10 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %11 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %10, i32 0, i32 3
  %12 = load %struct.channel_obj*, %struct.channel_obj** %11, align 8
  store %struct.channel_obj* %12, %struct.channel_obj** %5, align 8
  %13 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %14 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %13, i32 0, i32 4
  %15 = load %struct.common_obj*, %struct.common_obj** %14, align 8
  %16 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %17 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %15, i64 %16
  store %struct.common_obj* %17, %struct.common_obj** %6, align 8
  %18 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i32 0, i32 1
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %101

25:                                               ; preds = %1
  %26 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %27 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %25
  %34 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %35 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %37 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %38 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call i32 @enable_channel2(i32 0)
  %43 = call i32 @channel2_intr_enable(i32 0)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %46 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %47 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %52 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 2, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %44
  %56 = call i32 @enable_channel3(i32 0)
  %57 = call i32 @channel3_intr_enable(i32 0)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %60 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %62 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %61, i32 0, i32 3
  %63 = call i32 @videobuf_queue_cancel(i32* %62)
  %64 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %65 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %64, i32 0, i32 3
  %66 = call i32 @videobuf_mmap_free(i32* %65)
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 8
  %68 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %69 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %74 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %58, %25
  %76 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %77 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %80 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %79, i32 0, i32 3
  %81 = call i32 @atomic_dec(i32* %80)
  %82 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %83 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %88 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %75
  %90 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %91 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %90, i32 0, i32 1
  %92 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %93 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %92, i32 0, i32 1
  %94 = call i32 @v4l2_prio_close(i32* %91, i32* %93)
  %95 = load %struct.file*, %struct.file** %3, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  store %struct.vpif_fh* null, %struct.vpif_fh** %96, align 8
  %97 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %98 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %100 = call i32 @kfree(%struct.vpif_fh* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %89, %22
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @enable_channel2(i32) #1

declare dso_local i32 @channel2_intr_enable(i32) #1

declare dso_local i32 @enable_channel3(i32) #1

declare dso_local i32 @channel3_intr_enable(i32) #1

declare dso_local i32 @videobuf_queue_cancel(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vpif_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
