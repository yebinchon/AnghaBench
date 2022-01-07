; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_lca_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_lca.c_lca_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@LCA_CONF = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @lca_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lca_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @mk_conf_addr(%struct.pci_bus* %16, i32 %17, i32 %18, i64* %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %22, i32* %6, align 4
  br label %43

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 3
  %26 = mul nsw i32 %25, 8
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = mul nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = shl i64 %31, 5
  %33 = load i64, i64* %14, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* @LCA_CONF, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @conf_read(i64 %37)
  %39 = load i32, i32* %15, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %23, %21
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*) #1

declare dso_local i32 @conf_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
