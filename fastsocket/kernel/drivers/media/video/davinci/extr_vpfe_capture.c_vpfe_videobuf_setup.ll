; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_videobuf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_videobuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.videobuf_queue = type { %struct.vpfe_fh* }
%struct.vpfe_fh = type { %struct.vpfe_device* }
%struct.vpfe_device = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vpfe_buffer_setup\0A\00", align 1
@config_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"count=%d, size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @vpfe_videobuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_videobuf_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vpfe_fh*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %10 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %9, i32 0, i32 0
  %11 = load %struct.vpfe_fh*, %struct.vpfe_fh** %10, align 8
  store %struct.vpfe_fh* %11, %struct.vpfe_fh** %7, align 8
  %12 = load %struct.vpfe_fh*, %struct.vpfe_fh** %7, align 8
  %13 = getelementptr inbounds %struct.vpfe_fh, %struct.vpfe_fh* %12, i32 0, i32 0
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %13, align 8
  store %struct.vpfe_device* %14, %struct.vpfe_device** %8, align 8
  %15 = load i32, i32* @debug, align 4
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 0
  %18 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %15, i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %31 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %29, i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  ret i32 0
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
