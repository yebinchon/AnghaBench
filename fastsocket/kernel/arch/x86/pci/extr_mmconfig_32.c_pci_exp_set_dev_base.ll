; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_pci_exp_set_dev_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_pci_exp_set_dev_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmcfg_last_accessed_device = common dso_local global i64 0, align 8
@mmcfg_last_accessed_cpu = common dso_local global i32 0, align 4
@FIX_PCIE_MCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pci_exp_set_dev_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_exp_set_dev_base(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 20
  %12 = or i32 %9, %11
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 12
  %15 = or i32 %12, %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %7, align 8
  %17 = call i32 (...) @smp_processor_id()
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @mmcfg_last_accessed_device, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @mmcfg_last_accessed_cpu, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %3
  %26 = load i64, i64* %7, align 8
  store i64 %26, i64* @mmcfg_last_accessed_device, align 8
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* @mmcfg_last_accessed_cpu, align 4
  %28 = load i32, i32* @FIX_PCIE_MCFG, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @set_fixmap_nocache(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @set_fixmap_nocache(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
