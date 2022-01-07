; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_jr3_pci.c_jr3_pci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.TYPE_2__*, %struct.jr3_pci_dev_private* }
%struct.TYPE_2__ = type { %struct.jr3_pci_subdev_private* }
%struct.jr3_pci_subdev_private = type { i32, i32 }
%struct.jr3_pci_dev_private = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"jr3_pci_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"serial: %p %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @jr3_pci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jr3_pci_open(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jr3_pci_dev_private*, align 8
  %5 = alloca %struct.jr3_pci_subdev_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %7, align 8
  store %struct.jr3_pci_dev_private* %8, %struct.jr3_pci_dev_private** %4, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.jr3_pci_dev_private*, %struct.jr3_pci_dev_private** %4, align 8
  %13 = getelementptr inbounds %struct.jr3_pci_dev_private, %struct.jr3_pci_dev_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %23, align 8
  store %struct.jr3_pci_subdev_private* %24, %struct.jr3_pci_subdev_private** %5, align 8
  %25 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %26 = icmp ne %struct.jr3_pci_subdev_private* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %29 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %30 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.jr3_pci_subdev_private*, %struct.jr3_pci_subdev_private** %5, align 8
  %33 = getelementptr inbounds %struct.jr3_pci_subdev_private, %struct.jr3_pci_subdev_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.jr3_pci_subdev_private* %28, i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %27, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
