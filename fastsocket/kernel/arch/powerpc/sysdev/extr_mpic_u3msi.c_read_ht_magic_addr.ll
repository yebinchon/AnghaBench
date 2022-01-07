; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_read_ht_magic_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_read_ht_magic_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@HT_MSI_FLAGS = common dso_local global i64 0, align 8
@HT_MSI_FLAGS_FIXED = common dso_local global i32 0, align 4
@HT_MSI_FIXED_ADDR = common dso_local global i32 0, align 4
@HT_MSI_ADDR_LO = common dso_local global i64 0, align 8
@HT_MSI_ADDR_LO_MASK = common dso_local global i32 0, align 4
@HT_MSI_ADDR_HI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @read_ht_magic_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ht_magic_addr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* @HT_MSI_FLAGS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i64 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HT_MSI_FLAGS_FIXED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HT_MSI_FIXED_ADDR, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @HT_MSI_ADDR_LO, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i64 %26, i32* %7)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HT_MSI_ADDR_LO_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* @HT_MSI_ADDR_HI, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @pci_read_config_dword(%struct.pci_dev* %31, i64 %35, i32* %7)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 32
  %40 = or i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %21, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
