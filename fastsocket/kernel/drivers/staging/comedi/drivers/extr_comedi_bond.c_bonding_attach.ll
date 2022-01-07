; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32 }
%struct.comedi_devconfig = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"comedi%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@bonding_dio_insn_bits = common dso_local global i32 0, align 4
@bonding_dio_insn_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [117 x i8] c"attached with %u DIO channels coming from %u different subdevices all bonded together.  John Lennon would be proud!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @bonding_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i32, ...) @LOG_MSG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i64 @alloc_private(%struct.comedi_device* %11, i32 4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %20 = call i32 @doDevConfig(%struct.comedi_device* %18, %struct.comedi_devconfig* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i64 @alloc_subdevices(%struct.comedi_device* %31, i32 1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %25
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %39, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i64 0
  store %struct.comedi_subdevice* %41, %struct.comedi_subdevice** %6, align 8
  %42 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @SDF_READABLE, align 4
  %46 = load i32, i32* @SDF_WRITABLE, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 4
  store i32* @range_digital, i32** %58, align 8
  %59 = load i32, i32* @bonding_dio_insn_bits, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @bonding_dio_insn_config, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @LOG_MSG(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  store i32 1, i32* %3, align 4
  br label %72

72:                                               ; preds = %37, %34, %22, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @LOG_MSG(i8*, i32, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @doDevConfig(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
