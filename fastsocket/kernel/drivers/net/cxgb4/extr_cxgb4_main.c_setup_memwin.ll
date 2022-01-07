; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_setup_memwin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_setup_memwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@PCIE_MEM_ACCESS_BASE_WIN = common dso_local global i32 0, align 4
@MEMWIN0_BASE = common dso_local global i32 0, align 4
@MEMWIN0_APERTURE = common dso_local global i32 0, align 4
@MEMWIN1_BASE = common dso_local global i32 0, align 4
@MEMWIN1_APERTURE = common dso_local global i32 0, align 4
@MEMWIN2_BASE = common dso_local global i32 0, align 4
@MEMWIN2_APERTURE = common dso_local global i32 0, align 4
@PCIE_MEM_ACCESS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @setup_memwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_memwin(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pci_resource_start(i32 %8, i32 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN, align 4
  %12 = call i32 @PCIE_MEM_ACCESS_REG(i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MEMWIN0_BASE, align 4
  %15 = add i32 %13, %14
  %16 = call i32 @BIR(i32 0)
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MEMWIN0_APERTURE, align 4
  %19 = call i64 @ilog2(i32 %18)
  %20 = sub nsw i64 %19, 10
  %21 = call i32 @WINDOW(i64 %20)
  %22 = or i32 %17, %21
  %23 = call i32 @t4_write_reg(%struct.adapter* %10, i32 %12, i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN, align 4
  %26 = call i32 @PCIE_MEM_ACCESS_REG(i32 %25, i32 1)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MEMWIN1_BASE, align 4
  %29 = add i32 %27, %28
  %30 = call i32 @BIR(i32 0)
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MEMWIN1_APERTURE, align 4
  %33 = call i64 @ilog2(i32 %32)
  %34 = sub nsw i64 %33, 10
  %35 = call i32 @WINDOW(i64 %34)
  %36 = or i32 %31, %35
  %37 = call i32 @t4_write_reg(%struct.adapter* %24, i32 %26, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN, align 4
  %40 = call i32 @PCIE_MEM_ACCESS_REG(i32 %39, i32 2)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MEMWIN2_BASE, align 4
  %43 = add i32 %41, %42
  %44 = call i32 @BIR(i32 0)
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MEMWIN2_APERTURE, align 4
  %47 = call i64 @ilog2(i32 %46)
  %48 = sub nsw i64 %47, 10
  %49 = call i32 @WINDOW(i64 %48)
  %50 = or i32 %45, %49
  %51 = call i32 @t4_write_reg(%struct.adapter* %38, i32 %40, i32 %50)
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %1
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pci_resource_start(i32 %61, i32 2)
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = call i32 @OCQ_WIN_OFFSET(i32 %65, %struct.TYPE_4__* %67)
  %69 = add i32 %62, %68
  store i32 %69, i32* %4, align 4
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @roundup_pow_of_two(i64 %74)
  %76 = ashr i32 %75, 10
  store i32 %76, i32* %5, align 4
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN, align 4
  %79 = call i32 @PCIE_MEM_ACCESS_REG(i32 %78, i32 3)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @BIR(i32 1)
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = call i64 @ilog2(i32 %83)
  %85 = call i32 @WINDOW(i64 %84)
  %86 = or i32 %82, %85
  %87 = call i32 @t4_write_reg(%struct.adapter* %77, i32 %79, i32 %86)
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET, align 4
  %90 = call i32 @PCIE_MEM_ACCESS_REG(i32 %89, i32 3)
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @t4_write_reg(%struct.adapter* %88, i32 %90, i32 %95)
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = load i32, i32* @PCIE_MEM_ACCESS_OFFSET, align 4
  %99 = call i32 @PCIE_MEM_ACCESS_REG(i32 %98, i32 3)
  %100 = call i32 @t4_read_reg(%struct.adapter* %97, i32 %99)
  br label %101

101:                                              ; preds = %58, %1
  ret void
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @BIR(i32) #1

declare dso_local i32 @WINDOW(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @OCQ_WIN_OFFSET(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
