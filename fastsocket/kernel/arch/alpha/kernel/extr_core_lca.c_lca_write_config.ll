; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_lca_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_lca_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@LCA_CONF = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @lca_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lca_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @mk_conf_addr(%struct.pci_bus* %15, i32 %16, i32 %17, i64* %13)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %21, i32* %6, align 4
  br label %41

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 1
  %25 = mul nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %13, align 8
  %28 = shl i64 %27, 5
  %29 = load i64, i64* %14, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* @LCA_CONF, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 3
  %37 = mul nsw i32 %36, 8
  %38 = shl i32 %34, %37
  %39 = call i32 @conf_write(i64 %33, i32 %38)
  %40 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %22, %20
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*) #1

declare dso_local i32 @conf_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
