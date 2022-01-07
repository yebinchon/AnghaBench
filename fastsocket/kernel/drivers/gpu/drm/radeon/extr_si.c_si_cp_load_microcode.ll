; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@SI_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@SI_CE_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@SI_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_cp_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %104

18:                                               ; preds = %10
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @si_cp_enable(%struct.radeon_device* %19, i32 0)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %28 = call i32 @WREG32(i32 %27, i32 0)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %40, %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SI_PFP_UCODE_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = ptrtoint i32* %35 to i32
  %38 = call i32 @be32_to_cpup(i32 %37)
  %39 = call i32 @WREG32(i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %45 = call i32 @WREG32(i32 %44, i32 0)
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %4, align 8
  %52 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %53 = call i32 @WREG32(i32 %52, i32 0)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %65, %43
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SI_CE_UCODE_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* @CP_CE_UCODE_DATA, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %4, align 8
  %62 = ptrtoint i32* %60 to i32
  %63 = call i32 @be32_to_cpup(i32 %62)
  %64 = call i32 @WREG32(i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %54

68:                                               ; preds = %54
  %69 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %70 = call i32 @WREG32(i32 %69, i32 0)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %4, align 8
  %77 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %78 = call i32 @WREG32(i32 %77, i32 0)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %90, %68
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SI_PM4_UCODE_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %4, align 8
  %87 = ptrtoint i32* %85 to i32
  %88 = call i32 @be32_to_cpup(i32 %87)
  %89 = call i32 @WREG32(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %79

93:                                               ; preds = %79
  %94 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %95 = call i32 @WREG32(i32 %94, i32 0)
  %96 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %97 = call i32 @WREG32(i32 %96, i32 0)
  %98 = load i32, i32* @CP_CE_UCODE_ADDR, align 4
  %99 = call i32 @WREG32(i32 %98, i32 0)
  %100 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %101 = call i32 @WREG32(i32 %100, i32 0)
  %102 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %103 = call i32 @WREG32(i32 %102, i32 0)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %93, %15
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @si_cp_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
