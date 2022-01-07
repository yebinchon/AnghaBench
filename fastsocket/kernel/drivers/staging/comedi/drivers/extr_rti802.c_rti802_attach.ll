; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rti802.c_rti802_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_rti802.c_rti802_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**, i32* }
%struct.comedi_device = type { i64, i8*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32**, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: rti802: 0x%04lx \00", align 1
@RTI802_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rti802\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@rti802_ao_insn_read = common dso_local global i32 0, align 4
@rti802_ao_insn_write = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@dac_straight = common dso_local global i32 0, align 4
@dac_2comp = common dso_local global i32 0, align 4
@range_unipolar10 = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @rti802_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rti802_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
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
  %20 = load i32, i32* @RTI802_SIZE, align 4
  %21 = call i32 @request_region(i64 %19, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %117

27:                                               ; preds = %2
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = call i64 @alloc_subdevices(%struct.comedi_device* %33, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call i64 @alloc_private(%struct.comedi_device* %37, i32 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %117

43:                                               ; preds = %36
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 2
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %45, align 8
  store %struct.comedi_subdevice* %46, %struct.comedi_subdevice** %6, align 8
  %47 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @SDF_WRITABLE, align 4
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  store i32 4095, i32* %54, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  store i32 8, i32* %56, align 4
  %57 = load i32, i32* @rti802_ao_insn_read, align 4
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %59 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @rti802_ao_insn_write, align 4
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 2
  store i32** %65, i32*** %67, align 8
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %112, %43
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 8
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 3, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @dac_straight, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32, i32* @dac_2comp, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %95 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32* @range_unipolar10, i32* @range_bipolar10
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %105, i32** %111, align 8
  br label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %68

115:                                              ; preds = %68
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %40, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
