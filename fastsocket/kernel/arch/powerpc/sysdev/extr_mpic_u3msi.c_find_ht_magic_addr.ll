; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_find_ht_magic_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mpic_u3msi.c_find_ht_magic_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i32, %struct.pci_bus* }

@HT_CAPTYPE_MSI_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @find_ht_magic_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ht_magic_addr(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  store %struct.pci_bus* %8, %struct.pci_bus** %4, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = icmp ne %struct.pci_bus* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HT_CAPTYPE_MSI_MAPPING, align 4
  %17 = call i32 @pci_find_ht_capability(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @read_ht_magic_addr(i32 %23, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 1
  %30 = load %struct.pci_bus*, %struct.pci_bus** %29, align 8
  store %struct.pci_bus* %30, %struct.pci_bus** %4, align 8
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @pci_find_ht_capability(i32, i32) #1

declare dso_local i32 @read_ht_magic_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
