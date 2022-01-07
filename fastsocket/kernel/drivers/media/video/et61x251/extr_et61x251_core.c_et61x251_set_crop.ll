; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_set_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { %struct.et61x251_sensor }
%struct.et61x251_sensor = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"fmw_sx, fmw_sy, fmw_length, fmw_height: %u %u %u %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et61x251_device*, %struct.v4l2_rect*)* @et61x251_set_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et61x251_set_crop(%struct.et61x251_device* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et61x251_device*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.et61x251_sensor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.et61x251_device* %0, %struct.et61x251_device** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %12 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %13 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %12, i32 0, i32 0
  store %struct.et61x251_sensor* %13, %struct.et61x251_sensor** %6, align 8
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.et61x251_sensor*, %struct.et61x251_sensor** %6, align 8
  %18 = getelementptr inbounds %struct.et61x251_sensor, %struct.et61x251_sensor* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = load %struct.et61x251_sensor*, %struct.et61x251_sensor** %6, align 8
  %24 = getelementptr inbounds %struct.et61x251_sensor, %struct.et61x251_sensor* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.et61x251_sensor*, %struct.et61x251_sensor** %6, align 8
  %33 = getelementptr inbounds %struct.et61x251_sensor, %struct.et61x251_sensor* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %31, %36
  %38 = load %struct.et61x251_sensor*, %struct.et61x251_sensor** %6, align 8
  %39 = getelementptr inbounds %struct.et61x251_sensor, %struct.et61x251_sensor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %50 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 255
  %53 = call i64 @et61x251_write_reg(%struct.et61x251_device* %50, i32 %52, i32 105)
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 255
  %61 = call i64 @et61x251_write_reg(%struct.et61x251_device* %58, i32 %60, i32 106)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 255
  %69 = call i64 @et61x251_write_reg(%struct.et61x251_device* %66, i32 %68, i32 107)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 255
  %77 = call i64 @et61x251_write_reg(%struct.et61x251_device* %74, i32 %76, i32 108)
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %83, 8
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 768
  %87 = ashr i32 %86, 6
  %88 = or i32 %84, %87
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 768
  %91 = ashr i32 %90, 4
  %92 = or i32 %88, %91
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 768
  %95 = ashr i32 %94, 2
  %96 = or i32 %92, %95
  %97 = call i64 @et61x251_write_reg(%struct.et61x251_device* %82, i32 %96, i32 109)
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %2
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %2
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @PDBGG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109, i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @et61x251_write_reg(%struct.et61x251_device*, i32, i32) #1

declare dso_local i32 @PDBGG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
