; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_report_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_report_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.pci_driver* }
%struct.pci_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*)* }

@pci_channel_io_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @eeh_report_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_report_resume(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_driver*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  store %struct.pci_driver* %9, %struct.pci_driver** %6, align 8
  %10 = load i32, i32* @pci_channel_io_normal, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %14 = icmp ne %struct.pci_driver* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @eeh_enable_irq(%struct.pci_dev* %17)
  %19 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %20 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %25 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %27, align 8
  %29 = icmp ne i32 (%struct.pci_dev*)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %16
  store i32 0, i32* %3, align 4
  br label %39

31:                                               ; preds = %23
  %32 = load %struct.pci_driver*, %struct.pci_driver** %6, align 8
  %33 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %35, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 %36(%struct.pci_dev* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %30, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @eeh_enable_irq(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
