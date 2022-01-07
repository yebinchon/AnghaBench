; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed initializing CP fences (%d).\0A\00", align 1
@RADEON_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed initializing CP (%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IB initialization failed (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed initializing audio\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rs690_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs690_startup(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = call i32 @rs690_mc_program(%struct.radeon_device* %5)
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call i32 @rv515_clock_startup(%struct.radeon_device* %7)
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @rs690_gpu_init(%struct.radeon_device* %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @rs400_gart_enable(%struct.radeon_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @radeon_wb_init(%struct.radeon_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %95

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = load i32, i32* @RADEON_RING_TYPE_GFX_INDEX, align 4
  %27 = call i32 @radeon_fence_driver_start_ring(%struct.radeon_device* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %95

37:                                               ; preds = %24
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = call i32 @radeon_irq_kms_init(%struct.radeon_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %95

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %53 = call i32 @rs600_irq_set(%struct.radeon_device* %52)
  %54 = load i32, i32* @RADEON_HOST_PATH_CNTL, align 4
  %55 = call i32 @RREG32(i32 %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = call i32 @r100_cp_init(%struct.radeon_device* %60, i32 1048576)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %95

71:                                               ; preds = %51
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = call i32 @radeon_ib_pool_init(%struct.radeon_device* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %95

83:                                               ; preds = %71
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @r600_audio_init(%struct.radeon_device* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %88, %76, %64, %48, %30, %22, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @rs690_mc_program(%struct.radeon_device*) #1

declare dso_local i32 @rv515_clock_startup(%struct.radeon_device*) #1

declare dso_local i32 @rs690_gpu_init(%struct.radeon_device*) #1

declare dso_local i32 @rs400_gart_enable(%struct.radeon_device*) #1

declare dso_local i32 @radeon_wb_init(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fence_driver_start_ring(%struct.radeon_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @radeon_irq_kms_init(%struct.radeon_device*) #1

declare dso_local i32 @rs600_irq_set(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @r100_cp_init(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_ib_pool_init(%struct.radeon_device*) #1

declare dso_local i32 @r600_audio_init(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
