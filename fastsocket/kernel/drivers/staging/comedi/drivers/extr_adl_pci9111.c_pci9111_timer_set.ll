; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i32 }

@PCI9111_8254_COUNTER_0 = common dso_local global i32 0, align 4
@PCI9111_8254_READ_LOAD_LSB_MSB = common dso_local global i32 0, align 4
@PCI9111_8254_MODE_0 = common dso_local global i32 0, align 4
@PCI9111_8254_BINARY_COUNTER = common dso_local global i32 0, align 4
@PCI9111_8254_COUNTER_1 = common dso_local global i32 0, align 4
@PCI9111_8254_MODE_2 = common dso_local global i32 0, align 4
@PCI9111_8254_COUNTER_2 = common dso_local global i32 0, align 4
@dev_private = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @pci9111_timer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_timer_set(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load i32, i32* @PCI9111_8254_COUNTER_0, align 4
  %4 = load i32, i32* @PCI9111_8254_READ_LOAD_LSB_MSB, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @PCI9111_8254_MODE_0, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @PCI9111_8254_BINARY_COUNTER, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @pci9111_8254_control_set(i32 %9)
  %11 = load i32, i32* @PCI9111_8254_COUNTER_1, align 4
  %12 = load i32, i32* @PCI9111_8254_READ_LOAD_LSB_MSB, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PCI9111_8254_MODE_2, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @PCI9111_8254_BINARY_COUNTER, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @pci9111_8254_control_set(i32 %17)
  %19 = load i32, i32* @PCI9111_8254_COUNTER_2, align 4
  %20 = load i32, i32* @PCI9111_8254_READ_LOAD_LSB_MSB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PCI9111_8254_MODE_2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PCI9111_8254_BINARY_COUNTER, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @pci9111_8254_control_set(i32 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pci9111_8254_counter_2_set(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_private, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pci9111_8254_counter_1_set(i32 %34)
  ret void
}

declare dso_local i32 @pci9111_8254_control_set(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci9111_8254_counter_2_set(i32) #1

declare dso_local i32 @pci9111_8254_counter_1_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
