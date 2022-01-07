; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gen2_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gen2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@radeon_pcie_gen2 = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@PCIE_SPEED_5_0GT = common dso_local global i64 0, align 8
@PCIE_SPEED_8_0GT = common dso_local global i64 0, align 8
@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_CURRENT_DATA_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PCIE gen 2 link speeds already enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\0A\00", align 1
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_DIS = common dso_local global i32 0, align 4
@LC_TARGET_LINK_SPEED_OVERRIDE_EN = common dso_local global i32 0, align 4
@LC_CLR_FAILED_SPD_CHANGE_CNT = common dso_local global i32 0, align 4
@LC_GEN2_EN_STRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_pcie_gen2_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i64, i64* @radeon_pcie_gen2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %123

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RADEON_IS_IGP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %123

16:                                               ; preds = %8
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RADEON_IS_PCIE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %123

24:                                               ; preds = %16
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i64 @ASIC_IS_X2(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %123

29:                                               ; preds = %24
  %30 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %31 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCIE_SPEED_5_0GT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCIE_SPEED_8_0GT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %123

50:                                               ; preds = %39, %29
  %51 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %52 = call i32 @RREG32_PCIE_P(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @LC_CURRENT_DATA_RATE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 @DRM_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %123

59:                                               ; preds = %50
  %60 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %114

70:                                               ; preds = %65, %59
  %71 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %72 = call i32 @RREG32_PCIE_P(i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @WREG32_PCIE_P(i32 %77, i32 %78)
  %80 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %81 = call i32 @RREG32_PCIE_P(i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @LC_TARGET_LINK_SPEED_OVERRIDE_EN, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @WREG32_PCIE_P(i32 %86, i32 %87)
  %89 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %90 = call i32 @RREG32_PCIE_P(i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @WREG32_PCIE_P(i32 %94, i32 %95)
  %97 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %98 = call i32 @RREG32_PCIE_P(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @WREG32_PCIE_P(i32 %103, i32 %104)
  %106 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %107 = call i32 @RREG32_PCIE_P(i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @WREG32_PCIE_P(i32 %111, i32 %112)
  br label %123

114:                                              ; preds = %65
  %115 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %116 = call i32 @RREG32_PCIE_P(i32 %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %118 = load i32, i32* %3, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @WREG32_PCIE_P(i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %7, %15, %23, %28, %49, %57, %114, %70
  ret void
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_P(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @WREG32_PCIE_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
