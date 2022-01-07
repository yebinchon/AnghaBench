; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_prt_entry = type { i32 }
%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Found %s[%c] _PRT entry\0A\00", align 1
@PCI_CLASS_BRIDGE_CARDBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No interrupt pin configured for device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Derived GSI for %s INT %c from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"can't derive routing for PCI INT %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_prt_entry* (%struct.pci_dev*, i32)* @acpi_pci_irq_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_prt_entry*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_prt_entry*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.acpi_prt_entry* @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %11, i32 %12)
  store %struct.acpi_prt_entry* %13, %struct.acpi_prt_entry** %6, align 8
  %14 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  %15 = icmp ne %struct.acpi_prt_entry* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @ACPI_DB_INFO, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_name(%struct.pci_dev* %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pin_name(i32 %20)
  %22 = call i32 @ACPI_DEBUG_PRINT(i32 %21)
  %23 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  store %struct.acpi_prt_entry* %23, %struct.acpi_prt_entry** %3, align 8
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %7, align 8
  br label %30

30:                                               ; preds = %72, %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pci_swizzle_interrupt_pin(%struct.pci_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* @PCI_CLASS_BRIDGE_CARDBUS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ACPI_DB_INFO, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = call i32 @pci_name(%struct.pci_dev* %51)
  %53 = call i32 @ACPI_DEBUG_PRINT(i32 %52)
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %3, align 8
  br label %85

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %33
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.acpi_prt_entry* @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %57, i32 %58)
  store %struct.acpi_prt_entry* %59, %struct.acpi_prt_entry** %6, align 8
  %60 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  %61 = icmp ne %struct.acpi_prt_entry* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i32, i32* @ACPI_DB_INFO, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_name(%struct.pci_dev* %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @pin_name(i32 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %69 = call i32 @pci_name(%struct.pci_dev* %68)
  %70 = call i32 @ACPI_DEBUG_PRINT(i32 %69)
  %71 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %6, align 8
  store %struct.acpi_prt_entry* %71, %struct.acpi_prt_entry** %3, align 8
  br label %85

72:                                               ; preds = %56
  %73 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %73, %struct.pci_dev** %4, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.pci_dev*, %struct.pci_dev** %77, align 8
  store %struct.pci_dev* %78, %struct.pci_dev** %7, align 8
  br label %30

79:                                               ; preds = %30
  %80 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 2
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @pin_name(i32 %82)
  %84 = call i32 @dev_warn(i32* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %3, align 8
  br label %85

85:                                               ; preds = %79, %62, %49, %16
  %86 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  ret %struct.acpi_prt_entry* %86
}

declare dso_local %struct.acpi_prt_entry* @acpi_pci_irq_find_prt_entry(%struct.pci_dev*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @pci_swizzle_interrupt_pin(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
