; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_close_config_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_pci_v3.c_v3_close_config_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V3_LB_BASE1 = common dso_local global i32 0, align 4
@PHYS_PCI_MEM_BASE = common dso_local global i64 0, align 8
@SZ_256M = common dso_local global i64 0, align 8
@V3_LB_BASE_ADR_SIZE_256MB = common dso_local global i32 0, align 4
@V3_LB_BASE_PREFETCH = common dso_local global i32 0, align 4
@V3_LB_BASE_ENABLE = common dso_local global i32 0, align 4
@V3_LB_MAP1 = common dso_local global i32 0, align 4
@PCI_BUS_PREMEM_START = common dso_local global i32 0, align 4
@V3_LB_MAP_TYPE_MEM_MULTIPLE = common dso_local global i32 0, align 4
@V3_LB_BASE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @v3_close_config_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v3_close_config_window() #0 {
  %1 = load i32, i32* @V3_LB_BASE1, align 4
  %2 = load i64, i64* @PHYS_PCI_MEM_BASE, align 8
  %3 = load i64, i64* @SZ_256M, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @v3_addr_to_lb_base(i64 %4)
  %6 = load i32, i32* @V3_LB_BASE_ADR_SIZE_256MB, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @V3_LB_BASE_PREFETCH, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @v3_writel(i32 %1, i32 %11)
  %13 = load i32, i32* @V3_LB_MAP1, align 4
  %14 = load i32, i32* @PCI_BUS_PREMEM_START, align 4
  %15 = call i32 @v3_addr_to_lb_map(i32 %14)
  %16 = load i32, i32* @V3_LB_MAP_TYPE_MEM_MULTIPLE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @v3_writew(i32 %13, i32 %17)
  %19 = load i32, i32* @V3_LB_BASE0, align 4
  %20 = load i64, i64* @PHYS_PCI_MEM_BASE, align 8
  %21 = call i32 @v3_addr_to_lb_base(i64 %20)
  %22 = load i32, i32* @V3_LB_BASE_ADR_SIZE_256MB, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V3_LB_BASE_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @v3_writel(i32 %19, i32 %25)
  ret void
}

declare dso_local i32 @v3_writel(i32, i32) #1

declare dso_local i32 @v3_addr_to_lb_base(i64) #1

declare dso_local i32 @v3_writew(i32, i32) #1

declare dso_local i32 @v3_addr_to_lb_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
