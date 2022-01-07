; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_restrict_pll2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_init.c_init_io_restrict_pll2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.nouveau_bios* }
%struct.nouveau_bios = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"IO_RESTRICT_PLL2\09R[0x%06x] =PLL= ((0x%04x[0x%02x] & 0x%02x) >> 0x%02x) [{\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09%dkHz *\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09%dkHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"}]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io_restrict_pll2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io_restrict_pll2(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %13 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %14 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %13, i32 0, i32 1
  %15 = load %struct.nouveau_bios*, %struct.nouveau_bios** %14, align 8
  store %struct.nouveau_bios* %15, %struct.nouveau_bios** %3, align 8
  %16 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %17 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %18 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @nv_ro16(%struct.nouveau_bios* %16, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 3
  %27 = call i32 @nv_ro08(%struct.nouveau_bios* %22, i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = call i32 @nv_ro08(%struct.nouveau_bios* %28, i64 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %35 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %36 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 5
  %39 = call i32 @nv_ro08(%struct.nouveau_bios* %34, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %41 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %42 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 6
  %45 = call i32 @nv_ro08(%struct.nouveau_bios* %40, i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %47 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %48 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 7
  %51 = call i32 @nv_ro32(%struct.nouveau_bios* %46, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 11
  store i64 %61, i64* %59, align 8
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @init_rdvgai(%struct.nvbios_init* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %98, %1
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %70
  %75 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %76 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %77 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @nv_ro32(%struct.nouveau_bios* %75, i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @init_prog_pll(%struct.nvbios_init* %86, i32 %87, i32 %88)
  br label %93

90:                                               ; preds = %74
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %83
  %94 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %95 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 4
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %70

101:                                              ; preds = %70
  %102 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @nv_ro16(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @init_rdvgai(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_prog_pll(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
