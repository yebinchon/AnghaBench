; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08.c_das08_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das08.c_das08_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [18 x i8] c"comedi%d: das08: \00", align 1
@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@pci = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"this driver has not been built with PCI support.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CNTRL = common dso_local global i64 0, align 8
@CNTRL_DIR = common dso_local global i32 0, align 4
@CNTRL_INTR = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INTCSR = common dso_local global i64 0, align 8
@INTR1_ENABLE = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_PCIDAS08 = common dso_local global i64 0, align 8
@PCI_INTR_ENABLE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPUTERBOARDS = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @das08_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das08_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call i32 @alloc_private(%struct.comedi_device* %8, i32 4)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @pci, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %39

28:                                               ; preds = %14
  %29 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @das08_common_attach(%struct.comedi_device* %36, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %24, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @das08_common_attach(%struct.comedi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
