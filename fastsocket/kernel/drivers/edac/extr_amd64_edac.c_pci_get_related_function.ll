; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_pci_get_related_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_pci_get_related_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32, i32, %struct.pci_dev*)* @pci_get_related_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @pci_get_related_function(i32 %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %11 = call %struct.pci_dev* @pci_get_device(i32 %8, i32 %9, %struct.pci_dev* %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @PCI_SLOT(i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @PCI_SLOT(i32 %34)
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %43

38:                                               ; preds = %27, %15
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = call %struct.pci_dev* @pci_get_device(i32 %39, i32 %40, %struct.pci_dev* %41)
  store %struct.pci_dev* %42, %struct.pci_dev** %7, align 8
  br label %12

43:                                               ; preds = %37, %12
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  ret %struct.pci_dev* %44
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
