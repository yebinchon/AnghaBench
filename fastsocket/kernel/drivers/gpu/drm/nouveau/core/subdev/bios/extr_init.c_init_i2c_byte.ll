; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_i2c_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"I2C_BYTE\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09[0x%02x] &= 0x%02x |= 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_i2c_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_i2c_byte(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %11 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %12 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %11, i32 0, i32 1
  %13 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %13, %struct.nouveau_bios** %3, align 8
  %14 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @nv_ro08(%struct.nouveau_bios* %14, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %21 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %22 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @nv_ro08(%struct.nouveau_bios* %20, i64 %24)
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 3
  %32 = call i32 @nv_ro08(%struct.nouveau_bios* %27, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 4
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %79, %78, %1
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %40
  %45 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %46 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %47 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 0
  %50 = call i32 @nv_ro08(%struct.nouveau_bios* %45, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %52 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %53 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @nv_ro08(%struct.nouveau_bios* %51, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 2
  %62 = call i32 @nv_ro08(%struct.nouveau_bios* %57, i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  %67 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %68 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 3
  store i64 %70, i64* %68, align 8
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @init_rdi2cr(%struct.nvbios_init* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %44
  br label %40

79:                                               ; preds = %44
  %80 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @init_wri2cr(%struct.nvbios_init* %80, i32 %81, i32 %82, i32 %83, i32 %88)
  br label %40

90:                                               ; preds = %40
  ret void
}

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @init_rdi2cr(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @init_wri2cr(%struct.nvbios_init*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
