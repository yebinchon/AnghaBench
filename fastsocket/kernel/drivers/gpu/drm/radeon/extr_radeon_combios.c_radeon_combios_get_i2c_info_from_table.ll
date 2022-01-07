; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_i2c_info_from_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_get_i2c_info_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.radeon_i2c_bus_rec = type { i32 }

@COMBIOS_I2C_INFO_TABLE = common dso_local global i32 0, align 4
@DDC_MONID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_combios_get_i2c_info_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_combios_get_i2c_info_from_table(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_i2c_bus_rec, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %2, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load i32, i32* @COMBIOS_I2C_INFO_TABLE, align 4
  %18 = call i64 @combios_get_table_offset(%struct.drm_device* %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @RBIOS8(i64 %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %68, %21
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 3
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 5
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = add nsw i64 %35, 0
  %37 = call i32 @RBIOS8(i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 136
  br i1 %39, label %40, label %67

40:                                               ; preds = %29
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 3
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 5
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = add nsw i64 %46, 3
  %48 = call i32 @RBIOS8(i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 3
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 %51, 5
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = add nsw i64 %54, 4
  %56 = call i32 @RBIOS8(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i32, i32* @DDC_MONID, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 1, %61
  %63 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %57, i32 %58, i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast %struct.radeon_i2c_bus_rec* %2 to i8*
  %66 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %71

67:                                               ; preds = %29
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %25

71:                                               ; preds = %40, %25
  br label %72

72:                                               ; preds = %71, %1
  %73 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %2, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  ret i32 %74
}

declare dso_local i64 @combios_get_table_offset(%struct.drm_device*, i32) #1

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i32 @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
