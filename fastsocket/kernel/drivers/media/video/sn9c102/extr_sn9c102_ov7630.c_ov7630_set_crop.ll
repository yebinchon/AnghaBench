; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_rect = type { i64, i64 }
%struct.sn9c102_sensor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_rect*)* @ov7630_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7630_set_crop(%struct.sn9c102_device* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.sn9c102_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %9 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %10 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %9)
  store %struct.sn9c102_sensor* %10, %struct.sn9c102_sensor** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %15 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %13, %18
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %22 = call i32 @sn9c102_get_bridge(%struct.sn9c102_device* %21)
  switch i32 %22, label %45 [
    i32 132, label %23
    i32 131, label %23
    i32 130, label %23
    i32 129, label %34
    i32 128, label %34
  ]

23:                                               ; preds = %2, %2, %2
  %24 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %28 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %26, %31
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %46

34:                                               ; preds = %2, %2
  %35 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %39 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %37, %42
  %44 = add nsw i64 %43, 4
  store i64 %44, i64* %7, align 8
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %34, %23
  %47 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %47, i64 %48, i32 18)
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  %54 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %54, i64 %55, i32 19)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_get_bridge(%struct.sn9c102_device*) #1

declare dso_local i64 @sn9c102_write_reg(%struct.sn9c102_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
