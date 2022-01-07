; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_slot.c_walk_p2p_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_slot.c_walk_p2p_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.callback_args = type { i32, i32 (i32, i32, i8*, i8**)*, %struct.pci_bus* }

@.str = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"p2p bridge walk, pci_bus = %x\0A\00", align 1
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @walk_p2p_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_p2p_bridge(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (i32, i32, i8*, i8**)*, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca %struct.pci_bus*, align 8
  %18 = alloca %struct.callback_args, align 8
  %19 = alloca %struct.callback_args*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.callback_args*
  store %struct.callback_args* %21, %struct.callback_args** %19, align 8
  %22 = load %struct.callback_args*, %struct.callback_args** %19, align 8
  %23 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %22, i32 0, i32 2
  %24 = load %struct.pci_bus*, %struct.pci_bus** %23, align 8
  store %struct.pci_bus* %24, %struct.pci_bus** %17, align 8
  %25 = load %struct.callback_args*, %struct.callback_args** %19, align 8
  %26 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %25, i32 0, i32 1
  %27 = load i32 (i32, i32, i8*, i8**)*, i32 (i32, i32, i8*, i8**)** %26, align 8
  store i32 (i32, i32, i8*, i8**)* %27, i32 (i32, i32, i8*, i8**)** %15, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @acpi_get_handle(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @acpi_evaluate_integer(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @AE_OK, align 4
  store i32 %42, i32* %5, align 4
  br label %97

43:                                               ; preds = %35
  %44 = load i64, i64* %12, align 8
  %45 = lshr i64 %44, 16
  %46 = and i64 %45, 65535
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i64, i64* %12, align 8
  %49 = and i64 %48, 65535
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load %struct.pci_bus*, %struct.pci_bus** %17, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @PCI_DEVFN(i32 %52, i32 %53)
  %55 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %51, i32 %54)
  store %struct.pci_dev* %55, %struct.pci_dev** %16, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %57 = icmp ne %struct.pci_dev* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.pci_bus*, %struct.pci_bus** %60, align 8
  %62 = icmp ne %struct.pci_bus* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58, %43
  br label %93

64:                                               ; preds = %58
  %65 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.pci_bus*, %struct.pci_bus** %66, align 8
  %68 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %18, i32 0, i32 2
  store %struct.pci_bus* %67, %struct.pci_bus** %68, align 8
  %69 = load i32 (i32, i32, i8*, i8**)*, i32 (i32, i32, i8*, i8**)** %15, align 8
  %70 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %18, i32 0, i32 1
  store i32 (i32, i32, i8*, i8**)* %69, i32 (i32, i32, i8*, i8**)** %70, align 8
  %71 = load %struct.callback_args*, %struct.callback_args** %19, align 8
  %72 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.callback_args, %struct.callback_args* %18, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load %struct.pci_bus*, %struct.pci_bus** %76, align 8
  %78 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32 (i32, i32, i8*, i8**)*, i32 (i32, i32, i8*, i8**)** %15, align 8
  %84 = call i32 @acpi_walk_namespace(i32 %81, i32 %82, i32 1, i32 (i32, i32, i8*, i8**)* %83, %struct.callback_args* %18, i32* null)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  br label %93

89:                                               ; preds = %64
  %90 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @acpi_walk_namespace(i32 %90, i32 %91, i32 1, i32 (i32, i32, i8*, i8**)* @walk_p2p_bridge, %struct.callback_args* %18, i32* null)
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %89, %88, %63
  %94 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %95 = call i32 @pci_dev_put(%struct.pci_dev* %94)
  %96 = load i32, i32* @AE_OK, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %41, %33
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32 (i32, i32, i8*, i8**)*, %struct.callback_args*, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
