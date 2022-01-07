; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci1710_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.comedi_device = type { i64, i64, i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci1710_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1710_detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = call i32 @pci1710_reset(%struct.comedi_device* %13)
  br label %15

15:                                               ; preds = %12, %7
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %25 = call i32 @free_irq(i64 %23, %struct.comedi_device* %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @comedi_pci_disable(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @pci_dev_put(i64 %44)
  br label %46

46:                                               ; preds = %41, %26
  br label %47

47:                                               ; preds = %46, %1
  ret i32 0
}

declare dso_local i32 @pci1710_reset(%struct.comedi_device*) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
