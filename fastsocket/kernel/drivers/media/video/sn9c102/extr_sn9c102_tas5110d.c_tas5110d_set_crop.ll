; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_tas5110d.c_tas5110d_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_tas5110d.c_tas5110d_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_rect = type { i64, i64 }
%struct.sn9c102_sensor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_rect*)* @tas5110d_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5110d_set_crop(%struct.sn9c102_device* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.sn9c102_sensor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %9 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %10 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %9)
  store %struct.sn9c102_sensor* %10, %struct.sn9c102_sensor** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %15 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %13, %18
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %20, 69
  store i32 %21, i32* %7, align 4
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %5, align 8
  %26 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %24, %29
  %31 = trunc i64 %30 to i32
  %32 = add nsw i32 %31, 9
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %33, i32 %34, i32 18)
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %40, i32 %41, i32 19)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %48 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %47, i32 20, i32 26)
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %54 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %53, i32 10, i32 27)
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i64 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
