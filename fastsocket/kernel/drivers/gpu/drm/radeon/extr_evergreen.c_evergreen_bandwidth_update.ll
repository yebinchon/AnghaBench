; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call i32 @radeon_update_display_priority(%struct.radeon_device* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %29, %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %115, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %118

43:                                               ; preds = %37
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.drm_display_mode* %53, %struct.drm_display_mode** %3, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store %struct.drm_display_mode* %64, %struct.drm_display_mode** %4, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %76 = call i64 @evergreen_line_buffer_adjust(%struct.radeon_device* %65, %struct.TYPE_7__* %73, %struct.drm_display_mode* %74, %struct.drm_display_mode* %75)
  store i64 %76, i64* %6, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @evergreen_program_watermarks(%struct.radeon_device* %77, %struct.TYPE_7__* %85, i64 %86, i64 %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %101 = call i64 @evergreen_line_buffer_adjust(%struct.radeon_device* %89, %struct.TYPE_7__* %98, %struct.drm_display_mode* %99, %struct.drm_display_mode* %100)
  store i64 %101, i64* %6, align 8
  %102 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %106, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @evergreen_program_watermarks(%struct.radeon_device* %102, %struct.TYPE_7__* %111, i64 %112, i64 %113)
  br label %115

115:                                              ; preds = %43
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 2
  store i32 %117, i32* %7, align 4
  br label %37

118:                                              ; preds = %37
  ret void
}

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i64 @evergreen_line_buffer_adjust(%struct.radeon_device*, %struct.TYPE_7__*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @evergreen_program_watermarks(%struct.radeon_device*, %struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
