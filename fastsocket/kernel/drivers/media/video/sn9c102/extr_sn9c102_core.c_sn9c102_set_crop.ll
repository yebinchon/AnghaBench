; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { %struct.sn9c102_sensor }
%struct.sn9c102_sensor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"h_start, v_start, h_size, v_size, ho_size, vo_size %u %u %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_rect*)* @sn9c102_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_set_crop(%struct.sn9c102_device* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %12 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %13 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %12, i32 0, i32 0
  store %struct.sn9c102_sensor* %13, %struct.sn9c102_sensor** %6, align 8
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %18 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %28 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %26, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 16
  store i32 %37, i32* %9, align 4
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 16
  store i32 %41, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %42 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %42, i32 %43, i32 18)
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %49, i32 %50, i32 19)
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %56, i32 %57, i32 21)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @sn9c102_write_reg(%struct.sn9c102_device* %63, i32 %64, i32 22)
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %2
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %2
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @PDBGG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %72
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @PDBGG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
