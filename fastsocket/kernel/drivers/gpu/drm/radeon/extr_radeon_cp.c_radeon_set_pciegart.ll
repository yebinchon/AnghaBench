; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_pciegart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cp.c_radeon_set_pciegart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RADEON_PCIE_TX_GART_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"programming pcie %08X %08lX %08X\0A\00", align 1
@RADEON_PCIE_TX_DISCARD_RD_ADDR_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_BASE = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_START_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_END_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @radeon_set_pciegart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_pciegart(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %8 = call i32 @RADEON_READ_PCIE(%struct.TYPE_7__* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %19, i32 %22)
  %24 = load i32, i32* @RADEON_PCIE_TX_DISCARD_RD_ADDR_LO, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RADEON_WRITE_PCIE(i32 %24, i32 %27)
  %29 = load i32, i32* @RADEON_PCIE_TX_GART_BASE, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @RADEON_WRITE_PCIE(i32 %29, i32 %33)
  %35 = load i32, i32* @RADEON_PCIE_TX_GART_START_LO, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RADEON_WRITE_PCIE(i32 %35, i32 %38)
  %40 = load i32, i32* @RADEON_PCIE_TX_GART_END_LO, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @RADEON_WRITE_PCIE(i32 %40, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 @radeon_write_agp_location(%struct.TYPE_7__* %50, i32 -64)
  %52 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %53 = load i32, i32* @RADEON_PCIE_TX_GART_EN, align 4
  %54 = call i32 @RADEON_WRITE_PCIE(i32 %52, i32 %53)
  br label %62

55:                                               ; preds = %2
  %56 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RADEON_PCIE_TX_GART_EN, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 @RADEON_WRITE_PCIE(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %11
  ret void
}

declare dso_local i32 @RADEON_READ_PCIE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i32) #1

declare dso_local i32 @RADEON_WRITE_PCIE(i32, i32) #1

declare dso_local i32 @radeon_write_agp_location(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
