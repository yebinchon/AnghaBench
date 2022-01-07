; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_report_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.pci_error_handlers* }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@pci_channel_io_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @report_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report_resume(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_error_handlers*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call i32 @down(i32* %8)
  %10 = load i32, i32* @pci_channel_io_normal, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %21, align 8
  %23 = icmp ne %struct.pci_error_handlers* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %28, align 8
  %30 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %29, i32 0, i32 0
  %31 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %30, align 8
  %32 = icmp ne i32 (%struct.pci_dev.0*)* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24, %17, %2
  br label %46

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %38, align 8
  store %struct.pci_error_handlers* %39, %struct.pci_error_handlers** %5, align 8
  %40 = load %struct.pci_error_handlers*, %struct.pci_error_handlers** %5, align 8
  %41 = getelementptr inbounds %struct.pci_error_handlers, %struct.pci_error_handlers* %40, i32 0, i32 0
  %42 = load i32 (%struct.pci_dev.0*)*, i32 (%struct.pci_dev.0*)** %41, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = bitcast %struct.pci_dev* %43 to %struct.pci_dev.0*
  %45 = call i32 %42(%struct.pci_dev.0* %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @up(i32* %49)
  ret i32 0
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
