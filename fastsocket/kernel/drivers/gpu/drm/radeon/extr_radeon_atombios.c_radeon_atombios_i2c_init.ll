; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.atom_context* }
%struct.atom_context = type { i32 }
%struct.radeon_i2c_bus_rec = type { i32, i64 }
%struct._ATOM_GPIO_I2C_INFO = type { i32* }

@DATA = common dso_local global i32 0, align 4
@GPIO_I2C_Info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_atombios_i2c_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.atom_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._ATOM_GPIO_I2C_INFO*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca %struct.radeon_i2c_bus_rec, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.atom_context*, %struct.atom_context** %16, align 8
  store %struct.atom_context* %17, %struct.atom_context** %3, align 8
  %18 = load i32, i32* @DATA, align 4
  %19 = load i32, i32* @GPIO_I2C_Info, align 4
  %20 = call i32 @GetIndexIntoMasterTable(i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @atom_parse_data_header(%struct.atom_context* %21, i32 %22, i32* %9, i32* null, i32* null, i32* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %86

25:                                               ; preds = %1
  %26 = load %struct.atom_context*, %struct.atom_context** %3, align 8
  %27 = getelementptr inbounds %struct.atom_context, %struct.atom_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct._ATOM_GPIO_I2C_INFO*
  store %struct._ATOM_GPIO_I2C_INFO* %32, %struct._ATOM_GPIO_I2C_INFO** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 4
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %82, %25
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  %43 = load %struct._ATOM_GPIO_I2C_INFO*, %struct._ATOM_GPIO_I2C_INFO** %7, align 8
  %44 = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, %struct._ATOM_GPIO_I2C_INFO* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %4, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @radeon_lookup_i2c_gpio_quirks(%struct.radeon_device* %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call { i32, i64 } @radeon_get_bus_rec_for_i2c_gpio(i32* %53)
  %55 = bitcast %struct.radeon_i2c_bus_rec* %13 to { i32, i64 }*
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 0
  %57 = extractvalue { i32, i64 } %54, 0
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %55, i32 0, i32 1
  %59 = extractvalue { i32, i64 } %54, 1
  store i64 %59, i64* %58, align 8
  %60 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %61 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %42
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %67 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %74 = call i32 @radeon_i2c_create(i32 %72, %struct.radeon_i2c_bus_rec* %5, i8* %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %65, %42
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %38

85:                                               ; preds = %38
  br label %86

86:                                               ; preds = %85, %1
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.atom_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @radeon_lookup_i2c_gpio_quirks(%struct.radeon_device*, i32*, i32) #1

declare dso_local { i32, i64 } @radeon_get_bus_rec_for_i2c_gpio(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @radeon_i2c_create(i32, %struct.radeon_i2c_bus_rec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
