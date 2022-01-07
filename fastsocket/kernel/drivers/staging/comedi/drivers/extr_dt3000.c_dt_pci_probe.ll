; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@dt3k_boardtypes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @dt_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_pci_probe(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %10, align 8
  br label %11

11:                                               ; preds = %37, %3
  %12 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %13 = call %struct.pci_dev* @dt_pci_find_device(%struct.pci_dev* %12, i32* %8)
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PCI_SLOT(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %18
  br label %38

37:                                               ; preds = %29, %21
  br label %11

38:                                               ; preds = %36, %11
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.pci_dev* %39, %struct.pci_dev** %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load i64, i64* @dt3k_boardtypes, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %53, align 8
  %55 = icmp ne %struct.pci_dev* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %65

57:                                               ; preds = %51
  %58 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %59 = call i32 @setup_pci(%struct.comedi_device* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %62, %56
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.pci_dev* @dt_pci_find_device(%struct.pci_dev*, i32*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @setup_pci(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
