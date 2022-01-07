; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ii_pci20kc.c_pci20xxx_dio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i64, i32*, i32, i32, i32 }

@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@pci20xxx_dio_insn_bits = common dso_local global i32 0, align 4
@pci20xxx_dio_insn_config = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci20xxx_dio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci20xxx_dio_init(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %7 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @SDF_READABLE, align 4
  %9 = load i32, i32* @SDF_WRITABLE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  store i32 32, i32* %14, align 4
  %15 = load i32, i32* @pci20xxx_dio_insn_bits, align 4
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @pci20xxx_dio_insn_config, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 3
  store i32 32, i32* %24, align 4
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 5
  store i32* @range_digital, i32** %26, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = call i32 @pci20xxx_dio_config(%struct.comedi_device* %29, %struct.comedi_subdevice* %30)
  ret i32 0
}

declare dso_local i32 @pci20xxx_dio_config(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
