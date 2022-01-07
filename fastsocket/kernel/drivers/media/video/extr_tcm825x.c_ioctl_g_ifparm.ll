; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_ifparm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_ifparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_4__*, %struct.v4l2_fract }
%struct.TYPE_4__ = type { i32 (%struct.v4l2_ifparm*)* }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_ifparm = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@HIGH_FPS_MODE_LOWER_LIMIT = common dso_local global i32 0, align 4
@MAX_HALF_FPS = common dso_local global i32 0, align 4
@MAX_FPS = common dso_local global i32 0, align 4
@TCM825X_XCLK_MAX = common dso_local global i64 0, align 8
@TCM825X_XCLK_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_ifparm*)* @ioctl_g_ifparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_g_ifparm(%struct.v4l2_int_device* %0, %struct.v4l2_ifparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_ifparm*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_ifparm* %1, %struct.v4l2_ifparm** %5, align 8
  %11 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %11, i32 0, i32 0
  %13 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %12, align 8
  store %struct.tcm825x_sensor* %13, %struct.tcm825x_sensor** %6, align 8
  %14 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %15 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %14, i32 0, i32 1
  store %struct.v4l2_fract* %15, %struct.v4l2_fract** %7, align 8
  %16 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.v4l2_ifparm*)*, i32 (%struct.v4l2_ifparm*)** %19, align 8
  %21 = load %struct.v4l2_ifparm*, %struct.v4l2_ifparm** %5, align 8
  %22 = call i32 %20(%struct.v4l2_ifparm* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @HIGH_FPS_MODE_LOWER_LIMIT, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 2457, %39
  %41 = load i32, i32* @MAX_HALF_FPS, align 4
  %42 = sdiv i32 %40, %41
  br label %48

43:                                               ; preds = %27
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 2457, %44
  %46 = load i32, i32* @MAX_FPS, align 4
  %47 = sdiv i32 %45, %46
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i32 [ %42, %38 ], [ %47, %43 ]
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = mul nsw i32 %50, 10000
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i64, i64* @TCM825X_XCLK_MAX, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @min(i32 %52, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i64, i64* @TCM825X_XCLK_MIN, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @max(i32 %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.v4l2_ifparm*, %struct.v4l2_ifparm** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ifparm, %struct.v4l2_ifparm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %48, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
