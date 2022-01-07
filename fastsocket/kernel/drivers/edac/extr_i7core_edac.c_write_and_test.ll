; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_write_and_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7core_edac.c_write_and_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"setting pci %02x:%02x.%x reg=%02x value=%08x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Error during set pci %02x:%02x.%x reg=%02x write=%08x. Read=%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i64)* @write_and_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_and_test(%struct.pci_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PCI_FUNC(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @debugf0(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %23, i64 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %47, %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @msleep(i32 100)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @pci_write_config_dword(%struct.pci_dev* %35, i32 %36, i64 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %39, i32 %40, i64* %8)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %71

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PCI_SLOT(i32 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PCI_FUNC(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @i7core_printk(i32 %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60, i32 %64, i32 %65, i64 %66, i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %50, %45
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @debugf0(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @i7core_printk(i32, i8*, i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
