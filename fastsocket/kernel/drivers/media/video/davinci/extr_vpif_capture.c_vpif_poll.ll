; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32, i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpif_poll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @vpif_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpif_fh*, align 8
  %7 = alloca %struct.channel_obj*, align 8
  %8 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.vpif_fh*, %struct.vpif_fh** %10, align 8
  store %struct.vpif_fh* %11, %struct.vpif_fh** %6, align 8
  %12 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %13 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %12, i32 0, i32 0
  %14 = load %struct.channel_obj*, %struct.channel_obj** %13, align 8
  store %struct.channel_obj* %14, %struct.channel_obj** %7, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %7, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 0
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %8, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = call i32 @vpif_dbg(i32 2, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %23 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = load %struct.common_obj*, %struct.common_obj** %8, align 8
  %29 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %28, i32 0, i32 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @videobuf_poll_stream(%struct.file* %27, i32* %29, i32* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
