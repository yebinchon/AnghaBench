; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcimdda.c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"comedi%d: %s: \00", align 1
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@range_bipolar10 = common dso_local global i32 0, align 4
@range_bipolar5 = common dso_local global i32 0, align 4
@ao_winsn = common dso_local global i32 0, align 4
@ao_rinsn = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"DIO_INTERNAL not implemented yet!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call i64 @alloc_private(%struct.comedi_device* %8, i32 4)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %117

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %17 = call i32 @probe(%struct.comedi_device* %15, %struct.comedi_devconfig* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %117

22:                                               ; preds = %14
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = call i64 @alloc_subdevices(%struct.comedi_device* %35, i32 2)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %117

41:                                               ; preds = %22
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %43, align 8
  %45 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %44, i64 0
  store %struct.comedi_subdevice* %45, %struct.comedi_subdevice** %6, align 8
  %46 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SDF_WRITABLE, align 4
  %50 = load i32, i32* @SDF_READABLE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @figure_out_maxdata(i32 %61)
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %41
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 4
  store i32* @range_bipolar10, i32** %73, align 8
  br label %77

74:                                               ; preds = %41
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 4
  store i32* @range_bipolar5, i32** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %79 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %78, i32 0, i32 3
  store i32* @ao_winsn, i32** %79, align 8
  %80 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %80, i32 0, i32 2
  store i32* @ao_rinsn, i32** %81, align 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %83, align 8
  %85 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %84, i64 1
  store %struct.comedi_subdevice* %85, %struct.comedi_subdevice** %6, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %77
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %104 [
    i32 129, label %94
    i32 128, label %103
  ]

94:                                               ; preds = %90
  %95 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %96 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @subdev_8255_init(%struct.comedi_device* %95, %struct.comedi_subdevice* %96, i32* null, i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 4
  br label %108

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %90, %103
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %117

108:                                              ; preds = %94
  br label %113

109:                                              ; preds = %77
  %110 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %112 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %113, %104, %38, %20, %11
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @probe(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @figure_out_maxdata(i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
