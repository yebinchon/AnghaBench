; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CP_RB_CNTL = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@EVERGREEN_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@EVERGREEN_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_cp_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %10
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @r700_cp_stop(%struct.radeon_device* %19)
  %21 = load i32, i32* @CP_RB_CNTL, align 4
  %22 = load i32, i32* @RB_NO_UPDATE, align 4
  %23 = call i32 @RB_BLKSZ(i32 15)
  %24 = or i32 %22, %23
  %25 = call i32 @RB_BUFSZ(i32 3)
  %26 = or i32 %24, %25
  %27 = call i32 @WREG32(i32 %21, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %4, align 8
  %34 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %47, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @EVERGREEN_PFP_UCODE_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  %44 = ptrtoint i32* %42 to i32
  %45 = call i32 @be32_to_cpup(i32 %44)
  %46 = call i32 @WREG32(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %52 = call i32 @WREG32(i32 %51, i32 0)
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %4, align 8
  %59 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %60 = call i32 @WREG32(i32 %59, i32 0)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %72, %50
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @EVERGREEN_PM4_UCODE_SIZE, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  %69 = ptrtoint i32* %67 to i32
  %70 = call i32 @be32_to_cpup(i32 %69)
  %71 = call i32 @WREG32(i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %61

75:                                               ; preds = %61
  %76 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %77 = call i32 @WREG32(i32 %76, i32 0)
  %78 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %79 = call i32 @WREG32(i32 %78, i32 0)
  %80 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %81 = call i32 @WREG32(i32 %80, i32 0)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %15
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @r700_cp_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RB_BLKSZ(i32) #1

declare dso_local i32 @RB_BUFSZ(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
