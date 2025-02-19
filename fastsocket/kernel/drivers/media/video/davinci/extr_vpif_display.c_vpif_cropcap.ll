; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj* }
%struct.common_obj = type { i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @vpif_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.vpif_fh*
  store %struct.vpif_fh* %12, %struct.vpif_fh** %8, align 8
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %14 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %13, i32 0, i32 0
  %15 = load %struct.channel_obj*, %struct.channel_obj** %14, align 8
  store %struct.channel_obj* %15, %struct.channel_obj** %9, align 8
  %16 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %17 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %16, i32 0, i32 0
  %18 = load %struct.common_obj*, %struct.common_obj** %17, align 8
  %19 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %20 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %18, i64 %19
  store %struct.common_obj* %20, %struct.common_obj** %10, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %22 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %60

29:                                               ; preds = %3
  %30 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %43 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %52 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %29, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
