; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_t2.c_t2_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_t2.c_t2_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@T2_CONF = common dso_local global i64 0, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @t2_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t2_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @mk_conf_addr(%struct.pci_bus* %17, i32 %18, i32 %19, i64* %13, i8* %14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %23, i32* %6, align 4
  br label %45

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 1
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, 3
  %31 = mul nsw i32 %30, 8
  store i32 %31, i32* %15, align 4
  %32 = load i64, i64* %13, align 8
  %33 = shl i64 %32, 5
  %34 = load i64, i64* %16, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @T2_CONF, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i8, i8* %14, align 1
  %40 = call i32 @conf_read(i64 %38, i8 zeroext %39)
  %41 = load i32, i32* %15, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %24, %22
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*, i8*) #1

declare dso_local i32 @conf_read(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
