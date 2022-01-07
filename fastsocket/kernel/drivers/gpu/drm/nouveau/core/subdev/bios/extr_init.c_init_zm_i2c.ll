; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_zm_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_i2c_port = type { i32 }
%struct.i2c_msg = type { i64, i64, i64*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ZM_I2C\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\090x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"i2c wr failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_i2c(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca %struct.nouveau_i2c_port*, align 8
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  store %struct.nouveau_bios* %14, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nv_ro08(%struct.nouveau_bios* %15, i64 %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 2
  %27 = call i32 @nv_ro08(%struct.nouveau_bios* %22, i64 %26)
  %28 = ashr i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %5, align 8
  %30 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %31 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %32 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 3
  %35 = call i32 @nv_ro08(%struct.nouveau_bios* %30, i64 %34)
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %41 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 4
  store i64 %43, i64* %41, align 8
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %65, %1
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %50 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %51 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nv_ro08(%struct.nouveau_bios* %49, i64 %52)
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %55
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %62 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %48
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %70 = call i64 @init_exec(%struct.nvbios_init* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init* %73, i64 %74)
  store %struct.nouveau_i2c_port* %75, %struct.nouveau_i2c_port** %9, align 8
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  %81 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  store i64* %81, i64** %80, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %82, align 8
  %83 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  %84 = icmp ne %struct.nouveau_i2c_port* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %9, align 8
  %87 = getelementptr inbounds %struct.nouveau_i2c_port, %struct.nouveau_i2c_port* %86, i32 0, i32 0
  %88 = call i32 @i2c_transfer(i32* %87, %struct.i2c_msg* %10, i32 1)
  store i32 %88, i32* %11, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %85, %72
  br label %94

94:                                               ; preds = %93, %68
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local %struct.nouveau_i2c_port* @init_i2c(%struct.nvbios_init*, i64) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
