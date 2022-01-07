; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { %struct.vpif_capture_chan_config* }
%struct.vpif_capture_chan_config = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_input = type { i64 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { i64 }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid input index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vpif_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.vpif_capture_config*, align 8
  %9 = alloca %struct.vpif_capture_chan_config*, align 8
  %10 = alloca %struct.vpif_fh*, align 8
  %11 = alloca %struct.channel_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpif_dev, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %13, align 8
  store %struct.vpif_capture_config* %14, %struct.vpif_capture_config** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.vpif_fh*
  store %struct.vpif_fh* %16, %struct.vpif_fh** %10, align 8
  %17 = load %struct.vpif_fh*, %struct.vpif_fh** %10, align 8
  %18 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %17, i32 0, i32 0
  %19 = load %struct.channel_obj*, %struct.channel_obj** %18, align 8
  store %struct.channel_obj* %19, %struct.channel_obj** %11, align 8
  %20 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %8, align 8
  %21 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %20, i32 0, i32 0
  %22 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %21, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %11, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %22, i64 %25
  store %struct.vpif_capture_chan_config* %26, %struct.vpif_capture_chan_config** %9, align 8
  %27 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %9, align 8
  %31 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* @debug, align 4
  %36 = call i32 @vpif_dbg(i32 1, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %41 = load %struct.vpif_capture_chan_config*, %struct.vpif_capture_chan_config** %9, align 8
  %42 = getelementptr inbounds %struct.vpif_capture_chan_config, %struct.vpif_capture_chan_config* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @memcpy(%struct.v4l2_input* %40, i32* %48, i32 8)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %39, %34
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @memcpy(%struct.v4l2_input*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
