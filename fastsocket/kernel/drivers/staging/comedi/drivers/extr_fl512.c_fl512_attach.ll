; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_fl512.c_fl512_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_fl512.c_fl512_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [25 x i8] c"comedi:%d fl512: 0x%04lx\00", align 1
@FL512_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fl512\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@range_fl512 = common dso_local global i32 0, align 4
@fl512_ai_insn = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"comedi: fl512: subdevice 0 initialized\0A\00", align 1
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@fl512_ao_insn = common dso_local global i32 0, align 4
@fl512_ao_insn_readback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"comedi: fl512: subdevice 1 initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @fl512_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl512_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %9 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @FL512_SIZE, align 4
  %20 = call i32 @request_region(i64 %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %91

26:                                               ; preds = %2
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %33 = call i64 @alloc_private(%struct.comedi_device* %32, i32 4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %91

38:                                               ; preds = %26
  %39 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %40 = call i64 @alloc_subdevices(%struct.comedi_device* %39, i32 2)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %91

45:                                               ; preds = %38
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 2
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %47, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i64 0
  store %struct.comedi_subdevice* %49, %struct.comedi_subdevice** %7, align 8
  %50 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @SDF_READABLE, align 4
  %54 = load i32, i32* @SDF_GROUND, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 1
  store i32 16, i32* %59, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 2
  store i32 4095, i32* %61, align 8
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %62, i32 0, i32 5
  store i32* @range_fl512, i32** %63, align 8
  %64 = load i32, i32* @fl512_ai_insn, align 4
  %65 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 2
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %69, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i64 1
  store %struct.comedi_subdevice* %71, %struct.comedi_subdevice** %7, align 8
  %72 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %74 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SDF_WRITABLE, align 4
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %77 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 2
  store i32 4095, i32* %81, align 8
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 5
  store i32* @range_fl512, i32** %83, align 8
  %84 = load i32, i32* @fl512_ao_insn, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @fl512_ao_insn_readback, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %45, %42, %35, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
