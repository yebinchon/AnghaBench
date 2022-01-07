; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_65xx.c_ni_65xx_intr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@ClrEdge = common dso_local global i32 0, align 4
@ClrOverflow = common dso_local global i32 0, align 4
@Clear_Register = common dso_local global i64 0, align 8
@FallingEdgeIntEnable = common dso_local global i32 0, align 4
@RisingEdgeIntEnable = common dso_local global i32 0, align 4
@MasterInterruptEnable = common dso_local global i32 0, align 4
@EdgeIntEnable = common dso_local global i32 0, align 4
@Master_Interrupt_Control = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ni_65xx_intr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_65xx_intr_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %5 = load i32, i32* @ClrEdge, align 4
  %6 = load i32, i32* @ClrOverflow, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = call %struct.TYPE_4__* @private(%struct.comedi_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @Clear_Register, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writeb(i32 %7, i64 %15)
  %17 = load i32, i32* @FallingEdgeIntEnable, align 4
  %18 = load i32, i32* @RisingEdgeIntEnable, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MasterInterruptEnable, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EdgeIntEnable, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %25 = call %struct.TYPE_4__* @private(%struct.comedi_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @Master_Interrupt_Control, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 %23, i64 %31)
  ret i32 0
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local %struct.TYPE_4__* @private(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
