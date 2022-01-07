; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { i64, i32, i64*, %struct.channel_obj* }
%struct.channel_obj = type { i64, i64, i32, i32, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i32, i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpif_release\0A\00", align 1
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@VPIF_CHANNEL0_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL1_VIDEO = common dso_local global i64 0, align 8
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
  %13 = load i32, i32* @debug, align 4
  %14 = call i32 @vpif_dbg(i32 2, i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 4
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %6, align 8
  %20 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i32 0, i32 1
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @ERESTARTSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %1
  %28 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %29 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %27
  %36 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %37 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @VPIF_CHANNEL0_VIDEO, align 8
  %39 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %40 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 @enable_channel0(i32 0)
  %45 = call i32 @channel0_intr_enable(i32 0)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i64, i64* @VPIF_CHANNEL1_VIDEO, align 8
  %48 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %49 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %54 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 2, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %46
  %58 = call i32 @enable_channel1(i32 0)
  %59 = call i32 @channel1_intr_enable(i32 0)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %62 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %64 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %63, i32 0, i32 2
  %65 = call i32 @videobuf_queue_cancel(i32* %64)
  %66 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %67 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %66, i32 0, i32 2
  %68 = call i32 @videobuf_mmap_free(i32* %67)
  br label %69

69:                                               ; preds = %60, %27
  %70 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %71 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %75 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %78 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %77, i32 0, i32 2
  %79 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %80 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %79, i32 0, i32 1
  %81 = call i32 @v4l2_prio_close(i32* %78, i32* %80)
  %82 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %83 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %88 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %69
  %90 = load %struct.file*, %struct.file** %3, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  store %struct.vpif_fh* null, %struct.vpif_fh** %91, align 8
  %92 = load %struct.vpif_fh*, %struct.vpif_fh** %4, align 8
  %93 = call i32 @kfree(%struct.vpif_fh* %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %89, %24
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @enable_channel0(i32) #1

declare dso_local i32 @channel0_intr_enable(i32) #1

declare dso_local i32 @enable_channel1(i32) #1

declare dso_local i32 @channel1_intr_enable(i32) #1

declare dso_local i32 @videobuf_queue_cancel(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vpif_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
