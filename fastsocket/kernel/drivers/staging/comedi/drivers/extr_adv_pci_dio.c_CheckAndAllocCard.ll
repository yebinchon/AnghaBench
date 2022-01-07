; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_CheckAndAllocCard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_CheckAndAllocCard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dio_private = type { %struct.pci_dev*, %struct.pci_dio_private*, %struct.pci_dio_private* }
%struct.pci_dev = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_devconfig = type { i32 }

@pci_priv = common dso_local global %struct.pci_dio_private* null, align 8
@devpriv = common dso_local global %struct.pci_dio_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*, %struct.pci_dev*)* @CheckAndAllocCard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckAndAllocCard(%struct.comedi_device* %0, %struct.comedi_devconfig* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_devconfig*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pci_dio_private*, align 8
  %9 = alloca %struct.pci_dio_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %10 = load %struct.pci_dio_private*, %struct.pci_dio_private** @pci_priv, align 8
  store %struct.pci_dio_private* %10, %struct.pci_dio_private** %8, align 8
  store %struct.pci_dio_private* null, %struct.pci_dio_private** %9, align 8
  br label %11

11:                                               ; preds = %22, %3
  %12 = load %struct.pci_dio_private*, %struct.pci_dio_private** %8, align 8
  %13 = icmp ne %struct.pci_dio_private* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.pci_dio_private*, %struct.pci_dio_private** %8, align 8
  %16 = getelementptr inbounds %struct.pci_dio_private, %struct.pci_dio_private* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %19 = icmp eq %struct.pci_dev* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %43

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.pci_dio_private*, %struct.pci_dio_private** %8, align 8
  store %struct.pci_dio_private* %23, %struct.pci_dio_private** %9, align 8
  %24 = load %struct.pci_dio_private*, %struct.pci_dio_private** %8, align 8
  %25 = getelementptr inbounds %struct.pci_dio_private, %struct.pci_dio_private* %24, i32 0, i32 1
  %26 = load %struct.pci_dio_private*, %struct.pci_dio_private** %25, align 8
  store %struct.pci_dio_private* %26, %struct.pci_dio_private** %8, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.pci_dio_private*, %struct.pci_dio_private** %9, align 8
  %29 = icmp ne %struct.pci_dio_private* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.pci_dio_private*, %struct.pci_dio_private** %9, align 8
  %32 = load %struct.pci_dio_private*, %struct.pci_dio_private** @devpriv, align 8
  %33 = getelementptr inbounds %struct.pci_dio_private, %struct.pci_dio_private* %32, i32 0, i32 2
  store %struct.pci_dio_private* %31, %struct.pci_dio_private** %33, align 8
  %34 = load %struct.pci_dio_private*, %struct.pci_dio_private** @devpriv, align 8
  %35 = load %struct.pci_dio_private*, %struct.pci_dio_private** %9, align 8
  %36 = getelementptr inbounds %struct.pci_dio_private, %struct.pci_dio_private* %35, i32 0, i32 1
  store %struct.pci_dio_private* %34, %struct.pci_dio_private** %36, align 8
  br label %39

37:                                               ; preds = %27
  %38 = load %struct.pci_dio_private*, %struct.pci_dio_private** @devpriv, align 8
  store %struct.pci_dio_private* %38, %struct.pci_dio_private** @pci_priv, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = load %struct.pci_dio_private*, %struct.pci_dio_private** @devpriv, align 8
  %42 = getelementptr inbounds %struct.pci_dio_private, %struct.pci_dio_private* %41, i32 0, i32 0
  store %struct.pci_dev* %40, %struct.pci_dev** %42, align 8
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %20
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
