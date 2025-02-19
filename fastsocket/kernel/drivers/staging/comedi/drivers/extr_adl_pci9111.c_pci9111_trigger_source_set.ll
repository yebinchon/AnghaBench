; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_trigger_source_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9111.c_pci9111_trigger_source_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@PCI9111_EITS_INTERNAL = common dso_local global i32 0, align 4
@PCI9111_TPST_SOFTWARE_TRIGGER = common dso_local global i32 0, align 4
@PCI9111_TPST_TIMER_PACER = common dso_local global i32 0, align 4
@PCI9111_EITS_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @pci9111_trigger_source_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci9111_trigger_source_set(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @pci9111_trigger_and_autoscan_get()
  %7 = and i32 %6, 9
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %15
    i32 130, label %21
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @PCI9111_EITS_INTERNAL, align 4
  %11 = load i32, i32* @PCI9111_TPST_SOFTWARE_TRIGGER, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @PCI9111_EITS_INTERNAL, align 4
  %17 = load i32, i32* @PCI9111_TPST_TIMER_PACER, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @PCI9111_EITS_EXTERNAL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %2, %21, %15, %9
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @pci9111_trigger_and_autoscan_set(i32 %26)
  ret void
}

declare dso_local i32 @pci9111_trigger_and_autoscan_get(...) #1

declare dso_local i32 @pci9111_trigger_and_autoscan_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
