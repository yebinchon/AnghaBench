; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl725.c_pcl725_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl725.c_pcl725_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i8*, i64, %struct.comedi_subdevice*, i64, i32 }
%struct.comedi_subdevice = type { i32, i32, i32*, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: pcl725: 0x%04lx \00", align 1
@PCL725_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pcl725\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pcl725_do_insn = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@pcl725_di_insn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcl725_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl725_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
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
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @PCL725_SIZE, align 4
  %20 = call i32 @request_region(i64 %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i64 @alloc_subdevices(%struct.comedi_device* %34, i32 2)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %80

40:                                               ; preds = %26
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 2
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %42, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i64 0
  store %struct.comedi_subdevice* %44, %struct.comedi_subdevice** %6, align 8
  %45 = load i32, i32* @COMEDI_SUBD_DO, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @SDF_WRITABLE, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 1
  store i32 8, i32* %54, align 4
  %55 = load i32, i32* @pcl725_do_insn, align 4
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 2
  store i32* @range_digital, i32** %59, align 8
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 2
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %61, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i64 1
  store %struct.comedi_subdevice* %63, %struct.comedi_subdevice** %6, align 8
  %64 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @SDF_READABLE, align 4
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 1
  store i32 8, i32* %73, align 4
  %74 = load i32, i32* @pcl725_di_insn, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 2
  store i32* @range_digital, i32** %78, align 8
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %40, %37, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
