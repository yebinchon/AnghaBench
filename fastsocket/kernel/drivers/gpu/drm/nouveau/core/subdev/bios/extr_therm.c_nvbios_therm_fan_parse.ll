; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_therm.c_nvbios_therm_fan_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_therm.c_nvbios_therm_fan_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i32 }
%struct.nvbios_therm_fan = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.nouveau_therm_trip_point* }
%struct.nouveau_therm_trip_point = type { i32, i32, i32 }

@__const.nvbios_therm_fan_parse.duty_lut = private unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 25, i32 0, i32 40, i32 0, i32 50, i32 0, i32 75, i32 0, i32 85, i32 0, i32 100, i32 0, i32 100, i32 0], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_therm_fan_parse(%struct.nouveau_bios* %0, %struct.nvbios_therm_fan* %1) #0 {
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca %struct.nvbios_therm_fan*, align 8
  %5 = alloca %struct.nouveau_therm_trip_point*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %3, align 8
  store %struct.nvbios_therm_fan* %1, %struct.nvbios_therm_fan** %4, align 8
  store %struct.nouveau_therm_trip_point* null, %struct.nouveau_therm_trip_point** %5, align 8
  %12 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([16 x i32]* @__const.nvbios_therm_fan_parse.duty_lut to i8*), i64 64, i1 false)
  store i64 0, i64* %8, align 8
  %13 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %14 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %108, %2
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = trunc i64 %17 to i32
  %20 = call i64 @nvbios_therm_entry(%struct.nouveau_bios* %16, i32 %19, i64* %6, i64* %7)
  store i64 %20, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %109

22:                                               ; preds = %15
  %23 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @nv_ro16(%struct.nouveau_bios* %23, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add nsw i64 %28, 0
  %30 = call i32 @nv_ro08(%struct.nouveau_bios* %27, i64 %29)
  switch i32 %30, label %108 [
    i32 34, label %31
    i32 36, label %41
    i32 37, label %71
    i32 38, label %83
    i32 59, label %87
    i32 60, label %91
    i32 70, label %95
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %35 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 65280
  %38 = ashr i32 %37, 8
  %39 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %40 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %108

41:                                               ; preds = %22
  %42 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %43 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %47 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %46, i32 0, i32 8
  %48 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %47, align 8
  %49 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %50 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %48, i64 %52
  store %struct.nouveau_therm_trip_point* %53, %struct.nouveau_therm_trip_point** %5, align 8
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 15
  %56 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %57 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 4080
  %60 = ashr i32 %59, 4
  %61 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %62 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 61440
  %65 = ashr i32 %64, 12
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %70 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %108

71:                                               ; preds = %22
  %72 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %73 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %72, i32 0, i32 8
  %74 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %73, align 8
  %75 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %76 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %74, i64 %78
  store %struct.nouveau_therm_trip_point* %79, %struct.nouveau_therm_trip_point** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.nouveau_therm_trip_point*, %struct.nouveau_therm_trip_point** %5, align 8
  %82 = getelementptr inbounds %struct.nouveau_therm_trip_point, %struct.nouveau_therm_trip_point* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %108

83:                                               ; preds = %22
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %86 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  br label %108

87:                                               ; preds = %22
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %90 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  br label %108

91:                                               ; preds = %22
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %94 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  br label %108

95:                                               ; preds = %22
  %96 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add nsw i64 %97, 1
  %99 = call i32 @nv_ro08(%struct.nouveau_bios* %96, i64 %98)
  %100 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %101 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %103 = load i64, i64* %9, align 8
  %104 = add nsw i64 %103, 2
  %105 = call i32 @nv_ro08(%struct.nouveau_bios* %102, i64 %104)
  %106 = load %struct.nvbios_therm_fan*, %struct.nvbios_therm_fan** %4, align 8
  %107 = getelementptr inbounds %struct.nvbios_therm_fan, %struct.nvbios_therm_fan* %106, i32 0, i32 7
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %22, %95, %91, %87, %83, %71, %41, %31
  br label %15

109:                                              ; preds = %15
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nvbios_therm_entry(%struct.nouveau_bios*, i32, i64*, i64*) #2

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #2

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
