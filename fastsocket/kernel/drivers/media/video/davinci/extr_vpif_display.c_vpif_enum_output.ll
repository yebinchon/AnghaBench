; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_enum_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_enum_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.vpif_display_config* }
%struct.vpif_display_config = type { i64, i32* }
%struct.file = type { i32 }
%struct.v4l2_output = type { i64, i32, i32, i32 }

@vpif_dev = common dso_local global %struct.TYPE_2__* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid output index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_OUTPUT_TYPE_ANALOG = common dso_local global i32 0, align 4
@DM646X_V4L2_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_output*)* @vpif_enum_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_enum_output(%struct.file* %0, i8* %1, %struct.v4l2_output* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_output*, align 8
  %8 = alloca %struct.vpif_display_config*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_output* %2, %struct.v4l2_output** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vpif_dev, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.vpif_display_config*, %struct.vpif_display_config** %10, align 8
  store %struct.vpif_display_config* %11, %struct.vpif_display_config** %8, align 8
  %12 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %16 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @debug, align 4
  %21 = call i32 @vpif_dbg(i32 1, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vpif_display_config*, %struct.vpif_display_config** %8, align 8
  %29 = getelementptr inbounds %struct.vpif_display_config, %struct.vpif_display_config* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcpy(i32 %27, i32 %35)
  %37 = load i32, i32* @V4L2_OUTPUT_TYPE_ANALOG, align 4
  %38 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DM646X_V4L2_STD, align 4
  %41 = load %struct.v4l2_output*, %struct.v4l2_output** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
