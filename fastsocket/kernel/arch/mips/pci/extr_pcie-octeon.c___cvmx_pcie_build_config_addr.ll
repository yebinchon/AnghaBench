; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_build_config_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pcie-octeon.c___cvmx_pcie_build_config_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pcie_address = type { i64, [40 x i8] }
%union.cvmx_pciercx_cfg006 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32)* @__cvmx_pcie_build_config_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__cvmx_pcie_build_config_addr(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.cvmx_pcie_address, align 8
  %13 = alloca %union.cvmx_pciercx_cfg006, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CVMX_PCIERCX_CFG006(i32 %15)
  %17 = call i32 @cvmx_pcie_cfgx_read(i32 %14, i32 %16)
  %18 = bitcast %union.cvmx_pciercx_cfg006* %13 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = bitcast %union.cvmx_pciercx_cfg006* %13 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %65

28:                                               ; preds = %24, %5
  %29 = bitcast %union.cvmx_pcie_address* %12 to i64*
  store i64 0, i64* %29, align 8
  %30 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  %32 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 3, i32* %35, align 8
  %36 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = bitcast %union.cvmx_pciercx_cfg006* %13 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = bitcast %union.cvmx_pcie_address* %12 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = bitcast %union.cvmx_pcie_address* %12 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %28, %27
  %66 = load i64, i64* %6, align 8
  ret i64 %66
}

declare dso_local i32 @cvmx_pcie_cfgx_read(i32, i32) #1

declare dso_local i32 @CVMX_PCIERCX_CFG006(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
