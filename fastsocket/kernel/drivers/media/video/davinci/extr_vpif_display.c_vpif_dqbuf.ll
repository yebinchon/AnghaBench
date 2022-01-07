; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_dqbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @vpif_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_dqbuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.vpif_fh*, align 8
  %8 = alloca %struct.channel_obj*, align 8
  %9 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vpif_fh*
  store %struct.vpif_fh* %11, %struct.vpif_fh** %7, align 8
  %12 = load %struct.vpif_fh*, %struct.vpif_fh** %7, align 8
  %13 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %12, i32 0, i32 0
  %14 = load %struct.channel_obj*, %struct.channel_obj** %13, align 8
  store %struct.channel_obj* %14, %struct.channel_obj** %8, align 8
  %15 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %16 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %15, i32 0, i32 0
  %17 = load %struct.common_obj*, %struct.common_obj** %16, align 8
  %18 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %19 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %17, i64 %18
  store %struct.common_obj* %19, %struct.common_obj** %9, align 8
  %20 = load %struct.common_obj*, %struct.common_obj** %9, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i32 0, i32 0
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @videobuf_dqbuf(i32* %21, %struct.v4l2_buffer* %22, i32 %27)
  ret i32 %28
}

declare dso_local i32 @videobuf_dqbuf(i32*, %struct.v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
