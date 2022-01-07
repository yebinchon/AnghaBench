; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_aio_iiro_16.c_aio_iiro_16_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_aio_iiro_16.c_aio_iiro_16_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i8* }
%struct.comedi_devconfig = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"comedi%d: aio_iiro_16: \00", align 1
@thisboard = common dso_local global %struct.TYPE_2__* null, align 8
@AIO_IIRO_16_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"I/O port conflict\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i8* null, align 8
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@aio_iiro_16_dio_insn_bits_write = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@aio_iiro_16_dio_insn_bits_read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @aio_iiro_16_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_iiro_16_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thisboard, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AIO_IIRO_16_SIZE, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @request_region(i32 %22, i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %90

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i64 @alloc_private(%struct.comedi_device* %37, i32 4)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %33
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = call i64 @alloc_subdevices(%struct.comedi_device* %44, i32 2)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %43
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 1
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %52, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i64 0
  store %struct.comedi_subdevice* %54, %struct.comedi_subdevice** %7, align 8
  %55 = load i8*, i8** @COMEDI_SUBD_DIO, align 8
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @SDF_WRITABLE, align 4
  %59 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 0
  store i32 16, i32* %62, align 8
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 3
  store i32* @range_digital, i32** %66, align 8
  %67 = load i32, i32* @aio_iiro_16_dio_insn_bits_write, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 1
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %71, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i64 1
  store %struct.comedi_subdevice* %73, %struct.comedi_subdevice** %7, align 8
  %74 = load i8*, i8** @COMEDI_SUBD_DIO, align 8
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @SDF_READABLE, align 4
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 0
  store i32 16, i32* %81, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i32 0, i32 3
  store i32* @range_digital, i32** %85, align 8
  %86 = load i32, i32* @aio_iiro_16_dio_insn_bits_read, align 4
  %87 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %88 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %50, %47, %40, %29
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
