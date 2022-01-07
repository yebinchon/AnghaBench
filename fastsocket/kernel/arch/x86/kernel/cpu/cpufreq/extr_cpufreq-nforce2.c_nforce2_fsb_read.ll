; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_cpufreq-nforce2.c_nforce2_fsb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_cpufreq-nforce2.c_nforce2_fsb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_NVIDIA = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@NFORCE2_BOOTFSB = common dso_local global i32 0, align 4
@nforce2_dev = common dso_local global %struct.pci_dev* null, align 8
@NFORCE2_PLLENABLE = common dso_local global i32 0, align 4
@NFORCE2_PLLREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nforce2_fsb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_fsb_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @PCI_VENDOR_ID_NVIDIA, align 4
  %8 = load i32, i32* @PCI_ANY_ID, align 4
  %9 = load i32, i32* @PCI_ANY_ID, align 4
  %10 = call %struct.pci_dev* @pci_get_subsys(i32 %7, i32 495, i32 %8, i32 %9, i32* null)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @NFORCE2_BOOTFSB, align 4
  %17 = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 1000000
  store i32 %19, i32* %5, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** @nforce2_dev, align 8
  %21 = load i32, i32* @NFORCE2_PLLENABLE, align 4
  %22 = call i32 @pci_read_config_byte(%struct.pci_dev* %20, i32 %21, i32* %6)
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %14
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** @nforce2_dev, align 8
  %32 = load i32, i32* @NFORCE2_PLLREG, align 4
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i32 %32, i32* %6)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @nforce2_calc_fsb(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.pci_dev* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @nforce2_calc_fsb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
