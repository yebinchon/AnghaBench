; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-tx3927.c_tx3927_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-tx3927.c_tx3927_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@tx3927_pcicptr = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @tx3927_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx3927_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %12 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @mkaddr(%struct.pci_bus* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %18, i32* %6, align 4
  br label %49

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %47 [
    i32 1, label %21
    i32 2, label %31
    i32 4, label %42
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = ptrtoint i32* %24 to i64
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = or i64 %25, %28
  %30 = inttoptr i64 %29 to i32*
  store volatile i32 %22, i32* %30, align 4
  br label %47

31:                                               ; preds = %19
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = ptrtoint i32* %35 to i64
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = or i64 %36, %39
  %41 = inttoptr i64 %40 to i32*
  store volatile i32 %33, i32* %41, align 4
  br label %47

42:                                               ; preds = %19
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tx3927_pcicptr, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %19, %31, %21
  %48 = call i32 (...) @check_abort()
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %17
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @mkaddr(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @check_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
