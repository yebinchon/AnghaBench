; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i64 }
%struct.zoran_fh = type { %struct.zoran* }
%struct.zoran = type { i32 }

@V4L2_CID_BRIGHTNESS = common dso_local global i64 0, align 8
@V4L2_CID_HUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @zoran_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.zoran_fh*, align 8
  %9 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.zoran_fh*
  store %struct.zoran_fh* %11, %struct.zoran_fh** %8, align 8
  %12 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %13 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %12, i32 0, i32 0
  %14 = load %struct.zoran*, %struct.zoran** %13, align 8
  store %struct.zoran* %14, %struct.zoran** %9, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CID_BRIGHTNESS, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CID_HUE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %20
  %30 = load %struct.zoran*, %struct.zoran** %9, align 8
  %31 = getelementptr inbounds %struct.zoran, %struct.zoran* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.zoran*, %struct.zoran** %9, align 8
  %34 = load i32, i32* @core, align 4
  %35 = load i32, i32* @g_ctrl, align 4
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %37 = call i32 @decoder_call(%struct.zoran* %33, i32 %34, i32 %35, %struct.v4l2_control* %36)
  %38 = load %struct.zoran*, %struct.zoran** %9, align 8
  %39 = getelementptr inbounds %struct.zoran, %struct.zoran* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @decoder_call(%struct.zoran*, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
