; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_setup_subdevices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_setup_subdevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITEABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@dio_config_insn = common dso_local global i32 0, align 4
@hpdi_cmd = common dso_local global i32 0, align 4
@hpdi_cmd_test = common dso_local global i32 0, align 4
@hpdi_cancel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @setup_subdevices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_subdevices(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %5 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %6 = call i64 @alloc_subdevices(%struct.comedi_device* %5, i32 1)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i64 0
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  store %struct.comedi_subdevice* %16, %struct.comedi_subdevice** %18, align 8
  %19 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @SDF_READABLE, align 4
  %23 = load i32, i32* @SDF_WRITEABLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SDF_LSAMPL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SDF_CMD_READ, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 1
  store i32 32, i32* %32, align 4
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 2
  store i32 32, i32* %34, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 8
  store i32* @range_digital, i32** %38, align 8
  %39 = load i32, i32* @dio_config_insn, align 4
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @hpdi_cmd, align 4
  %43 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @hpdi_cmd_test, align 4
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %47 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @hpdi_cancel, align 4
  %49 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %11, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
