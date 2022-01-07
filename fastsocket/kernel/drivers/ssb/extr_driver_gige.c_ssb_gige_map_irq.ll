; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_gige.c_ssb_gige_map_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_gige.c_ssb_gige_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ssb_gige = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_gige_map_irq(%struct.ssb_device* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ssb_gige*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %8 = call %struct.ssb_gige* @ssb_get_drvdata(%struct.ssb_device* %7)
  store %struct.ssb_gige* %8, %struct.ssb_gige** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.ssb_gige*, %struct.ssb_gige** %6, align 8
  %15 = getelementptr inbounds %struct.ssb_gige, %struct.ssb_gige* %14, i32 0, i32 0
  %16 = icmp ne i32* %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.ssb_device*, %struct.ssb_device** %4, align 8
  %22 = call i32 @ssb_mips_irq(%struct.ssb_device* %21)
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.ssb_gige* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local i32 @ssb_mips_irq(%struct.ssb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
