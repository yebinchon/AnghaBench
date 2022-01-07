; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8255.c_dev_8255_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_8255.c_dev_8255_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i8*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [16 x i8] c"comedi%d: 8255:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"8255\00", align 1
@COMEDI_NDEVCONFOPTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c" no devices specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c" 0x%04lx\00", align 1
@_8255_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c" (I/O port conflict)\00", align 1
@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dev_8255_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_8255_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @COMEDI_NDEVCONFOPTS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %15

34:                                               ; preds = %29, %15
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @alloc_subdevices(%struct.comedi_device* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %96

49:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %91, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %50
  %57 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* @_8255_SIZE, align 4
  %68 = call i32 @request_region(i64 %66, i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %56
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 4
  br label %90

80:                                               ; preds = %56
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @subdev_8255_init(%struct.comedi_device* %81, %struct.TYPE_2__* %87, i32* null, i64 %88)
  br label %90

90:                                               ; preds = %80, %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %50

94:                                               ; preds = %50
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %47, %37
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.TYPE_2__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
