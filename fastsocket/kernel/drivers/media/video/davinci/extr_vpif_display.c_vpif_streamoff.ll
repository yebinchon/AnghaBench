; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vpif_fh = type { i32*, %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"buffer type not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fh->io_allowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"channel->started\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@VPIF_CHANNEL2_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.vpif_fh*
  store %struct.vpif_fh* %12, %struct.vpif_fh** %8, align 8
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %14 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %13, i32 0, i32 1
  %15 = load %struct.channel_obj*, %struct.channel_obj** %14, align 8
  store %struct.channel_obj* %15, %struct.channel_obj** %9, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 1
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = call i32 @vpif_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %94

28:                                               ; preds = %3
  %29 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %30 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = call i32 @vpif_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EACCES, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %94

40:                                               ; preds = %28
  %41 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %42 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = call i32 @vpif_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %94

49:                                               ; preds = %40
  %50 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %51 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %50, i32 0, i32 2
  %52 = call i64 @mutex_lock_interruptible(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ERESTARTSYS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %94

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  %62 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %63 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %64 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @enable_channel2(i32 0)
  %69 = call i32 @channel2_intr_enable(i32 0)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %72 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %73 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %78 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 2, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %70
  %82 = call i32 @enable_channel3(i32 0)
  %83 = call i32 @channel3_intr_enable(i32 0)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %87 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  %88 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %89 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %88, i32 0, i32 2
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %92 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %91, i32 0, i32 1
  %93 = call i32 @videobuf_streamoff(i32* %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %85, %54, %45, %36, %24
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @enable_channel2(i32) #1

declare dso_local i32 @channel2_intr_enable(i32) #1

declare dso_local i32 @enable_channel3(i32) #1

declare dso_local i32 @channel3_intr_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
