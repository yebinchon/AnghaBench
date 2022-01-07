; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rv770.c_rv770_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CP_RB_CNTL = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@R700_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@R700_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_cp_load_microcode(%struct.radeon_device* %0) #0 {
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
  br label %90

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
  %28 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %29 = load i32, i32* @SOFT_RESET_CP, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %32 = call i32 @RREG32(i32 %31)
  %33 = call i32 @mdelay(i32 15)
  %34 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %4, align 8
  %42 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %43 = call i32 @WREG32(i32 %42, i32 0)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %55, %18
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @R700_PFP_UCODE_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  %52 = ptrtoint i32* %50 to i32
  %53 = call i32 @be32_to_cpup(i32 %52)
  %54 = call i32 @WREG32(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %60 = call i32 @WREG32(i32 %59, i32 0)
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %4, align 8
  %67 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %68 = call i32 @WREG32(i32 %67, i32 0)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %80, %58
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @R700_PM4_UCODE_SIZE, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %4, align 8
  %77 = ptrtoint i32* %75 to i32
  %78 = call i32 @be32_to_cpup(i32 %77)
  %79 = call i32 @WREG32(i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %85 = call i32 @WREG32(i32 %84, i32 0)
  %86 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %87 = call i32 @WREG32(i32 %86, i32 0)
  %88 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %89 = call i32 @WREG32(i32 %88, i32 0)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %83, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @r700_cp_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RB_BLKSZ(i32) #1

declare dso_local i32 @RB_BUFSZ(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
