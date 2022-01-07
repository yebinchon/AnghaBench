; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_find_p2p_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_find_p2p_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"found PCI-to-PCI bridge at PCI %s\0A\00", align 1
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"find_p2p_bridge failed (error code = 0x%x)\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @find_p2p_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_p2p_bridge(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %10, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  br label %42

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @detect_ejectable_slots(i32 %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %27 = call i32 @pci_name(%struct.pci_dev* %26)
  %28 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @add_p2p_bridge(i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @acpi_walk_namespace(i32 %32, i32 %33, i32 1, i32 (i32, i32, i8*, i8**)* @find_p2p_bridge, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %44 = call i32 @pci_dev_put(%struct.pci_dev* %43)
  %45 = load i32, i32* @AE_OK, align 4
  ret i32 %45
}

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i64 @detect_ejectable_slots(i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @add_p2p_bridge(i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32 (i32, i32, i8*, i8**)*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
