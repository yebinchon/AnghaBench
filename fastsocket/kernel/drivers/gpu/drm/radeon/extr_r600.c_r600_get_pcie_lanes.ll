; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_get_pcie_lanes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r600.c_r600_get_pcie_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_get_pcie_lanes(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %5 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @RADEON_IS_IGP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RADEON_IS_PCIE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = call i64 @ASIC_IS_X2(%struct.radeon_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %40

25:                                               ; preds = %20
  %26 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_CNTL, align 4
  %27 = call i32 @RREG32_PCIE_P(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RADEON_PCIE_LC_LINK_WIDTH_RD_SHIFT, align 4
  %32 = ashr i32 %30, %31
  switch i32 %32, label %39 [
    i32 133, label %33
    i32 132, label %34
    i32 130, label %35
    i32 129, label %36
    i32 128, label %37
    i32 131, label %38
  ]

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %40

34:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %40

35:                                               ; preds = %25
  store i32 2, i32* %2, align 4
  br label %40

36:                                               ; preds = %25
  store i32 4, i32* %2, align 4
  br label %40

37:                                               ; preds = %25
  store i32 8, i32* %2, align 4
  br label %40

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %25, %38
  store i32 16, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %37, %36, %35, %34, %33, %24, %19, %11
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_PCIE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
