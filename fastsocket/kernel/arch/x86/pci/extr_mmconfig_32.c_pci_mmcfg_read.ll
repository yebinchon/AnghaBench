; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_pci_mmcfg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_mmconfig_32.c_pci_mmcfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@pci_config_lock = common dso_local global i32 0, align 4
@mmcfg_virt_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @pci_mmcfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_mmcfg_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %10, align 4
  %20 = icmp ugt i32 %19, 255
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 4095
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %18, %6
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32*, i32** %13, align 8
  store i32 -1, i32* %26, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %66

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @get_base_addr(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %25

37:                                               ; preds = %29
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @spin_lock_irqsave(i32* @pci_config_lock, i64 %38)
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pci_exp_set_dev_base(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %63 [
    i32 1, label %45
    i32 2, label %51
    i32 4, label %57
  ]

45:                                               ; preds = %37
  %46 = load i32, i32* @mmcfg_virt_addr, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @mmio_config_readb(i32 %48)
  %50 = load i32*, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  br label %63

51:                                               ; preds = %37
  %52 = load i32, i32* @mmcfg_virt_addr, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @mmio_config_readw(i32 %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %63

57:                                               ; preds = %37
  %58 = load i32, i32* @mmcfg_virt_addr, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @mmio_config_readl(i32 %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %37, %57, %51, %45
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @pci_config_lock, i64 %64)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %25
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @get_base_addr(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_exp_set_dev_base(i32, i32, i32) #1

declare dso_local i32 @mmio_config_readb(i32) #1

declare dso_local i32 @mmio_config_readw(i32) #1

declare dso_local i32 @mmio_config_readl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
