; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_pci.c_pci_ampci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/unit-asb2305/extr_pci.c_pci_ampci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_ampci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_ampci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %31 [
    i32 1, label %13
    i32 2, label %19
    i32 4, label %25
  ]

13:                                               ; preds = %5
  %14 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @pci_ampci_write_config_byte(%struct.pci_bus* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %35

19:                                               ; preds = %5
  %20 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @pci_ampci_write_config_word(%struct.pci_bus* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %35

25:                                               ; preds = %5
  %26 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pci_ampci_write_config_dword(%struct.pci_bus* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %35

31:                                               ; preds = %5
  %32 = call i32 (...) @BUG()
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %25, %19, %13
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @pci_ampci_write_config_byte(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @pci_ampci_write_config_word(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @pci_ampci_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
