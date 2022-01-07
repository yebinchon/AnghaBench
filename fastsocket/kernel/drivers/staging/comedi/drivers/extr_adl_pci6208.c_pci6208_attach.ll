; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.comedi_devconfig = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"comedi%d: pci6208: \00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@pci6208_ao_winsn = common dso_local global i32 0, align 4
@pci6208_ao_rinsn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pci6208_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci6208_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = call i32 @alloc_private(%struct.comedi_device* %13, i32 4)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci6208_find_device(%struct.comedi_device* %20, i32 %25, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %90

36:                                               ; preds = %19
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci6208_pci_setup(i32 %39, i64* %8, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %90

48:                                               ; preds = %36
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = call i64 @alloc_subdevices(%struct.comedi_device* %57, i32 2)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %48
  %64 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 1
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %65, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i64 0
  store %struct.comedi_subdevice* %67, %struct.comedi_subdevice** %6, align 8
  %68 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %69 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @SDF_WRITABLE, align 4
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 0
  store i32 65535, i32* %80, align 8
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 3
  store i32* @range_bipolar10, i32** %82, align 8
  %83 = load i32, i32* @pci6208_ao_winsn, align 4
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @pci6208_ao_rinsn, align 4
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %63, %60, %46, %34, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci6208_find_device(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @pci6208_pci_setup(i32, i64*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
