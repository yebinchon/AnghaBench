; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_hpd_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_hpd_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@DC_HPD1_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPDx_SENSE = common dso_local global i32 0, align 4
@DC_HPD2_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD3_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD4_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD5_INT_STATUS = common dso_local global i32 0, align 4
@DC_HPD6_INT_STATUS = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT1_INT_STATUS = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECTx_SENSE = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT2_INT_STATUS = common dso_local global i32 0, align 4
@DC_HOT_PLUG_DETECT3_INT_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_hpd_sense(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %59 [
    i32 133, label %11
    i32 132, label %19
    i32 131, label %27
    i32 130, label %35
    i32 129, label %43
    i32 128, label %51
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @DC_HPD1_INT_STATUS, align 4
  %13 = call i32 @RREG32(i32 %12)
  %14 = load i32, i32* @DC_HPDx_SENSE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %11
  br label %60

19:                                               ; preds = %9
  %20 = load i32, i32* @DC_HPD2_INT_STATUS, align 4
  %21 = call i32 @RREG32(i32 %20)
  %22 = load i32, i32* @DC_HPDx_SENSE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %19
  br label %60

27:                                               ; preds = %9
  %28 = load i32, i32* @DC_HPD3_INT_STATUS, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @DC_HPDx_SENSE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27
  br label %60

35:                                               ; preds = %9
  %36 = load i32, i32* @DC_HPD4_INT_STATUS, align 4
  %37 = call i32 @RREG32(i32 %36)
  %38 = load i32, i32* @DC_HPDx_SENSE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %60

43:                                               ; preds = %9
  %44 = load i32, i32* @DC_HPD5_INT_STATUS, align 4
  %45 = call i32 @RREG32(i32 %44)
  %46 = load i32, i32* @DC_HPDx_SENSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43
  br label %60

51:                                               ; preds = %9
  %52 = load i32, i32* @DC_HPD6_INT_STATUS, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = load i32, i32* @DC_HPDx_SENSE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %60

59:                                               ; preds = %9
  br label %60

60:                                               ; preds = %59, %58, %50, %42, %34, %26, %18
  br label %89

61:                                               ; preds = %2
  %62 = load i32, i32* %4, align 4
  switch i32 %62, label %87 [
    i32 133, label %63
    i32 132, label %71
    i32 131, label %79
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @DC_HOT_PLUG_DETECT1_INT_STATUS, align 4
  %65 = call i32 @RREG32(i32 %64)
  %66 = load i32, i32* @DC_HOT_PLUG_DETECTx_SENSE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %63
  br label %88

71:                                               ; preds = %61
  %72 = load i32, i32* @DC_HOT_PLUG_DETECT2_INT_STATUS, align 4
  %73 = call i32 @RREG32(i32 %72)
  %74 = load i32, i32* @DC_HOT_PLUG_DETECTx_SENSE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %71
  br label %88

79:                                               ; preds = %61
  %80 = load i32, i32* @DC_HOT_PLUG_DETECT3_INT_STATUS, align 4
  %81 = call i32 @RREG32(i32 %80)
  %82 = load i32, i32* @DC_HOT_PLUG_DETECTx_SENSE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %79
  br label %88

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %86, %78, %70
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
