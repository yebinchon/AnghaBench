; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_si.c_si_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_RL_BASE = common dso_local global i32 0, align 4
@RLC_RL_SIZE = common dso_local global i32 0, align 4
@RLC_LB_CNTL = common dso_local global i32 0, align 4
@RLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@RLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_CLEAR_STATE_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@SI_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@RLC_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_UCODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_rlc_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @si_rlc_stop(%struct.radeon_device* %14)
  %16 = load i32, i32* @RLC_RL_BASE, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  %18 = load i32, i32* @RLC_RL_SIZE, align 4
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load i32, i32* @RLC_LB_CNTL, align 4
  %21 = call i32 @WREG32(i32 %20, i32 0)
  %22 = load i32, i32* @RLC_LB_CNTR_MAX, align 4
  %23 = call i32 @WREG32(i32 %22, i32 -1)
  %24 = load i32, i32* @RLC_LB_CNTR_INIT, align 4
  %25 = call i32 @WREG32(i32 %24, i32 0)
  %26 = load i32, i32* @RLC_SAVE_AND_RESTORE_BASE, align 4
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 8
  %32 = call i32 @WREG32(i32 %26, i32 %31)
  %33 = load i32, i32* @RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @WREG32(i32 %33, i32 %38)
  %40 = load i32, i32* @RLC_MC_CNTL, align 4
  %41 = call i32 @WREG32(i32 %40, i32 0)
  %42 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %43 = call i32 @WREG32(i32 %42, i32 0)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %64, %13
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SI_RLC_UCODE_SIZE, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  %58 = load i32, i32* @RLC_UCODE_DATA, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %5, align 8
  %61 = ptrtoint i32* %59 to i32
  %62 = call i32 @be32_to_cpup(i32 %61)
  %63 = call i32 @WREG32(i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %69 = call i32 @WREG32(i32 %68, i32 0)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %71 = call i32 @si_rlc_start(%struct.radeon_device* %70)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @si_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @si_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
