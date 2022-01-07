; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_ic.c_nouveau_therm_ic_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_ic.c_nouveau_therm_ic_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_board_info.0 = type { i32 }
%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i64 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c = type { i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)* }
%struct.i2c_board_info = type opaque
%struct.nvbios_extdev_func = type { i32 }

@NVBIOS_EXTDEV_LM89 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm90\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"monitoring device\00", align 1
@probe_monitoring_device = common dso_local global i32 0, align 4
@NVBIOS_EXTDEV_ADT7473 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adt7473\00", align 1
@nv_board_infos = common dso_local global %struct.i2c_board_info.0* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_therm_ic_ctor(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca %struct.nouveau_i2c*, align 8
  %6 = alloca %struct.nvbios_extdev_func, align 4
  %7 = alloca [2 x %struct.i2c_board_info.0], align 4
  %8 = alloca [2 x %struct.i2c_board_info.0], align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %10 = bitcast %struct.nouveau_therm* %9 to i8*
  %11 = bitcast i8* %10 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %11, %struct.nouveau_therm_priv** %3, align 8
  %12 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %13 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm* %12)
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %4, align 8
  %14 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %15 = call %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_therm* %14)
  store %struct.nouveau_i2c* %15, %struct.nouveau_i2c** %5, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %17 = load i32, i32* @NVBIOS_EXTDEV_LM89, align 4
  %18 = call i32 @nvbios_extdev_find(%struct.nouveau_bios* %16, i32 %17, %struct.nvbios_extdev_func* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds [2 x %struct.i2c_board_info.0], [2 x %struct.i2c_board_info.0]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  %26 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %21, i64 1
  %28 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %29, i32 0, i32 0
  %31 = load i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)*, i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)** %30, align 8
  %32 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %33 = call i32 @NV_I2C_DEFAULT(i32 0)
  %34 = getelementptr inbounds [2 x %struct.i2c_board_info.0], [2 x %struct.i2c_board_info.0]* %7, i64 0, i64 0
  %35 = bitcast %struct.i2c_board_info.0* %34 to %struct.i2c_board_info*
  %36 = load i32, i32* @probe_monitoring_device, align 4
  %37 = call i32 %31(%struct.nouveau_i2c* %32, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.i2c_board_info* %35, i32 %36)
  %38 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %39 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %83

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %46 = load i32, i32* @NVBIOS_EXTDEV_ADT7473, align 4
  %47 = call i32 @nvbios_extdev_find(%struct.nouveau_bios* %45, i32 %46, %struct.nvbios_extdev_func* %6)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds [2 x %struct.i2c_board_info.0], [2 x %struct.i2c_board_info.0]* %8, i64 0, i64 0
  %51 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 1
  %55 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %50, i64 1
  %57 = getelementptr inbounds %struct.i2c_board_info.0, %struct.i2c_board_info.0* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %59 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %58, i32 0, i32 0
  %60 = load i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)*, i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)** %59, align 8
  %61 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %62 = call i32 @NV_I2C_DEFAULT(i32 0)
  %63 = getelementptr inbounds [2 x %struct.i2c_board_info.0], [2 x %struct.i2c_board_info.0]* %8, i64 0, i64 0
  %64 = bitcast %struct.i2c_board_info.0* %63 to %struct.i2c_board_info*
  %65 = load i32, i32* @probe_monitoring_device, align 4
  %66 = call i32 %60(%struct.nouveau_i2c* %61, i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.i2c_board_info* %64, i32 %65)
  %67 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  br label %83

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %75 = getelementptr inbounds %struct.nouveau_i2c, %struct.nouveau_i2c* %74, i32 0, i32 0
  %76 = load i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)*, i32 (%struct.nouveau_i2c*, i32, i8*, %struct.i2c_board_info*, i32)** %75, align 8
  %77 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %5, align 8
  %78 = call i32 @NV_I2C_DEFAULT(i32 0)
  %79 = load %struct.i2c_board_info.0*, %struct.i2c_board_info.0** @nv_board_infos, align 8
  %80 = bitcast %struct.i2c_board_info.0* %79 to %struct.i2c_board_info*
  %81 = load i32, i32* @probe_monitoring_device, align 4
  %82 = call i32 %76(%struct.nouveau_i2c* %77, i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.i2c_board_info* %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %71, %42
  ret void
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm*) #1

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_therm*) #1

declare dso_local i32 @nvbios_extdev_find(%struct.nouveau_bios*, i32, %struct.nvbios_extdev_func*) #1

declare dso_local i32 @I2C_BOARD_INFO(i8*, i32) #1

declare dso_local i32 @NV_I2C_DEFAULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
