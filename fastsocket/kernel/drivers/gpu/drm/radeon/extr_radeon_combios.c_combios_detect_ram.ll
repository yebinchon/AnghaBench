; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_detect_ram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_detect_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_MEM_CNTL = common dso_local global i32 0, align 4
@RV100_HALF_MODE = common dso_local global i32 0, align 4
@RADEON_MM_APER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, i32)* @combios_detect_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combios_detect_ram(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.radeon_device*, %struct.radeon_device** %13, align 8
  store %struct.radeon_device* %14, %struct.radeon_device** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @RV100_HALF_MODE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, -65281
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @WREG32(i32 %33, i32 %34)
  %36 = load i32, i32* @RADEON_MEM_CNTL, align 4
  %37 = call i32 @RREG32(i32 %36)
  br label %38

38:                                               ; preds = %56, %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 1024
  %45 = mul nsw i32 %44, 1024
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @RADEON_MM_APER, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @WREG32_IDX(i32 %48, i32 -559038737)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @RADEON_MM_APER, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @RREG32_IDX(i32 %52)
  %54 = icmp ne i32 %53, -559038737
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %59

56:                                               ; preds = %42
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_IDX(i32, i32) #1

declare dso_local i32 @RREG32_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
