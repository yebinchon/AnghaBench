; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmda12.c_pcmda12_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmda12.c_pcmda12_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [26 x i8] c"comedi%d: %s: io: %lx %s \00", align 1
@driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"simultaneous xfer mode enabled\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IOSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@thisboard = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot allocate private data structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot allocate subdevice data structures\0A\00", align 1
@BITS = common dso_local global i32 0, align 4
@pcmda12_ranges = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@CHANS = common dso_local global i32 0, align 4
@ao_winsn = common dso_local global i32 0, align 4
@ao_rinsn = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcmda12_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmda12_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver, i32 0, i32 0), align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %19 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i64 %17, i8* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @IOSIZE, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver, i32 0, i32 0), align 4
  %30 = call i32 @request_region(i64 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %2
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %46 = call i64 @alloc_private(%struct.comedi_device* %45, i32 4)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %98

52:                                               ; preds = %36
  %53 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %54 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = call i64 @alloc_subdevices(%struct.comedi_device* %60, i32 1)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %98

67:                                               ; preds = %52
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 1
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %69, align 8
  store %struct.comedi_subdevice* %70, %struct.comedi_subdevice** %6, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %71, i32 0, i32 7
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @BITS, align 4
  %74 = shl i32 1, %73
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 6
  store i32* @pcmda12_ranges, i32** %79, align 8
  %80 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %81 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @SDF_READABLE, align 4
  %84 = load i32, i32* @SDF_WRITABLE, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @CHANS, align 4
  %89 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %92 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %91, i32 0, i32 3
  store i32* @ao_winsn, i32** %92, align 8
  %93 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %93, i32 0, i32 2
  store i32* @ao_rinsn, i32** %94, align 8
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = call i32 @zero_chans(%struct.comedi_device* %95)
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %67, %63, %48, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @zero_chans(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
