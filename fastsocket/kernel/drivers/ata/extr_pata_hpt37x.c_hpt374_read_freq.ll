; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt374_read_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt374_read_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @hpt374_read_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt374_read_freq(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call i64 @pci_resource_start(%struct.pci_dev* %7, i32 4)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @PCI_FUNC(i64 %11)
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call %struct.pci_dev* @pci_get_slot(i32 %18, i64 %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %6, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = icmp eq %struct.pci_dev* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

27:                                               ; preds = %15
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = call i64 @pci_resource_start(%struct.pci_dev* %28, i32 4)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 144
  %32 = call i32 @inl(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = call i32 @pci_dev_put(%struct.pci_dev* %33)
  br label %39

35:                                               ; preds = %1
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 144
  %38 = call i32 @inl(i64 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @PCI_FUNC(i64) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
