; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_fixup.c_quirk_pcie_aspm_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/pci/extr_fixup.c_quirk_pcie_aspm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@quirk_aspm_offset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @quirk_pcie_aspm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quirk_pcie_aspm_write(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** @quirk_aspm_offset, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @GET_INDEX(i32 %17, i32 %18)
  %20 = getelementptr inbounds i32, i32* %12, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, -4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %24, %5
  %32 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %33 = call i32 @pci_domain_nr(%struct.pci_bus* %32)
  %34 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %35 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @raw_pci_write(i32 %33, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  ret i32 %41
}

declare dso_local i64 @GET_INDEX(i32, i32) #1

declare dso_local i32 @raw_pci_write(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
