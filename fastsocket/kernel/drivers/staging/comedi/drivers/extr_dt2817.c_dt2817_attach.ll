; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2817.c_dt2817_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2817.c_dt2817_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i64, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: dt2817: 0x%04lx \00", align 1
@DT2817_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dt2817\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@dt2817_dio_insn_bits = common dso_local global i32 0, align 4
@dt2817_dio_insn_config = common dso_local global i32 0, align 4
@DT2817_CR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt2817_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2817_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* @DT2817_SIZE, align 4
  %21 = call i32 @request_region(i64 %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = call i32 @alloc_subdevices(%struct.comedi_device* %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %73

39:                                               ; preds = %27
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 2
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %41, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i64 0
  store %struct.comedi_subdevice* %43, %struct.comedi_subdevice** %7, align 8
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i32 0, i32 0
  store i32 32, i32* %45, align 8
  %46 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @SDF_READABLE, align 4
  %50 = load i32, i32* @SDF_WRITABLE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %54, i32 0, i32 6
  store i32* @range_digital, i32** %55, align 8
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @dt2817_dio_insn_bits, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @dt2817_dio_insn_config, align 4
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DT2817_CR, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @outb(i32 0, i64 %70)
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %39, %37, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
