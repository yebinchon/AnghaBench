; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_tsunami.c_tsunami_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_tsunami.c_tsunami_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @tsunami_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsunami_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @mk_conf_addr(%struct.pci_bus* %14, i32 %15, i32 %16, i64* %12, i8* %13)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %20, i32* %6, align 4
  br label %55

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %53 [
    i32 1, label %23
    i32 2, label %34
    i32 4, label %45
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %12, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__kernel_stb(i32 %24, i32 %27)
  %29 = call i32 (...) @mb()
  %30 = load i64, i64* %12, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__kernel_ldbu(i32 %32)
  br label %53

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  %36 = load i64, i64* %12, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__kernel_stw(i32 %35, i32 %38)
  %40 = call i32 (...) @mb()
  %41 = load i64, i64* %12, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__kernel_ldwu(i32 %43)
  br label %53

45:                                               ; preds = %21
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* %12, align 8
  %48 = inttoptr i64 %47 to i32*
  store i32 %46, i32* %48, align 4
  %49 = call i32 (...) @mb()
  %50 = load i64, i64* %12, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %21, %45, %34, %23
  %54 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, i64*, i8*) #1

declare dso_local i32 @__kernel_stb(i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @__kernel_ldbu(i32) #1

declare dso_local i32 @__kernel_stw(i32, i32) #1

declare dso_local i32 @__kernel_ldwu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
