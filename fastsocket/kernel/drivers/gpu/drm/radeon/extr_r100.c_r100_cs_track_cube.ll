; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_cube.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r100.c_r100_cs_track_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.r100_cs_track = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, %struct.radeon_bo* }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Cube texture offset greater than object size %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.r100_cs_track*, i32)* @r100_cs_track_cube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_cs_track_cube(%struct.radeon_device* %0, %struct.r100_cs_track* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.r100_cs_track*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_bo*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.r100_cs_track* %1, %struct.r100_cs_track** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %15 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %120, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %25, label %123

25:                                               ; preds = %22
  %26 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %27 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load %struct.radeon_bo*, %struct.radeon_bo** %37, align 8
  store %struct.radeon_bo* %38, %struct.radeon_bo** %11, align 8
  %39 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %40 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %9, align 4
  %52 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %53 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %25
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @r100_track_compress_size(i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %12, align 8
  br label %77

72:                                               ; preds = %25
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul i32 %73, %74
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %79 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = mul i64 %86, %85
  store i64 %87, i64* %12, align 8
  %88 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %89 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %105 = call i64 @radeon_bo_size(%struct.radeon_bo* %104)
  %106 = icmp ugt i64 %103, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %77
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.radeon_bo*, %struct.radeon_bo** %11, align 8
  %110 = call i64 @radeon_bo_size(%struct.radeon_bo* %109)
  %111 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %108, i64 %110)
  %112 = load %struct.r100_cs_track*, %struct.r100_cs_track** %6, align 8
  %113 = getelementptr inbounds %struct.r100_cs_track, %struct.r100_cs_track* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = call i32 @r100_cs_track_texture_print(%struct.TYPE_4__* %117)
  store i32 -1, i32* %4, align 4
  br label %124

119:                                              ; preds = %77
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %22

123:                                              ; preds = %22
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @r100_track_compress_size(i32, i32, i32) #1

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

declare dso_local i32 @r100_cs_track_texture_print(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
