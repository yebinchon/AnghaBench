; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_ram_reset_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_combios_parse_ram_reset_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@R300_MEM_PWRUP_COMPLETE = common dso_local global i32 0, align 4
@RADEON_MEM_PWRUP_COMPLETE = common dso_local global i32 0, align 4
@RADEON_MEM_STR_CNTL = common dso_local global i32 0, align 4
@RADEON_MEM_SDRAM_MODE_REG = common dso_local global i32 0, align 4
@RADEON_SDRAM_MODE_MASK = common dso_local global i32 0, align 4
@RADEON_B3MEM_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i64)* @combios_parse_ram_reset_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combios_parse_ram_reset_table(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.radeon_device*, %struct.radeon_device** %11, align 8
  store %struct.radeon_device* %12, %struct.radeon_device** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %82

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @RBIOS8(i64 %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %78, %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %81

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %28 = call i64 @ASIC_IS_R300(%struct.radeon_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @R300_MEM_PWRUP_COMPLETE, align 4
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @RADEON_MEM_PWRUP_COMPLETE, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %30
  store i32 20000, i32* %6, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %6, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* @RADEON_MEM_STR_CNTL, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %48

47:                                               ; preds = %39
  br label %35

48:                                               ; preds = %46, %35
  br label %78

49:                                               ; preds = %21
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @RBIOS16(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 2
  store i64 %53, i64* %4, align 8
  %54 = load i32, i32* @RADEON_MEM_SDRAM_MODE_REG, align 4
  %55 = call i32 @RREG32(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @RADEON_SDRAM_MODE_MASK, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @RADEON_MEM_SDRAM_MODE_REG, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 24
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @RADEON_MEM_SDRAM_MODE_REG, align 4
  %68 = call i32 @RREG32(i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @RADEON_B3MEM_RESET_MASK, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @RADEON_MEM_SDRAM_MODE_REG, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %49, %48
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @RBIOS8(i64 %79)
  store i32 %80, i32* %7, align 4
  br label %18

81:                                               ; preds = %18
  br label %82

82:                                               ; preds = %81, %2
  ret void
}

declare dso_local i32 @RBIOS8(i64) #1

declare dso_local i64 @ASIC_IS_R300(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RBIOS16(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
