; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_config_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_config_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64*, i32* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@config_params = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*)* @vpif_config_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_config_format(%struct.channel_obj* %0) #0 {
  %2 = alloca %struct.channel_obj*, align 8
  %3 = alloca %struct.common_obj*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %4 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %5 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %4, i32 0, i32 1
  %6 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %7 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %8 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %6, i64 %7
  store %struct.common_obj* %8, %struct.common_obj** %3, align 8
  %9 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %10 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %11 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %9, i32* %14, align 4
  %15 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 0), align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  %24 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %25 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %28 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %29 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config_params, i32 0, i32 1), align 8
  %32 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %33 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %38 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %43 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %44 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %49 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %50 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
