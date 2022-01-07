; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_epci.c_celleb_epci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_scc_epci.c_celleb_epci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }
%struct.pci_controller = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"EPCI: addr=0x%p, devfn=0x%x, where=0x%x, size=0x%x, val=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @celleb_epci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celleb_epci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pci_controller*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %15)
  store %struct.pci_controller* %16, %struct.pci_controller** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = srem i32 %17, %18
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %22 = call i32 @celleb_epci_get_epci_cfg(%struct.pci_controller* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %94

26:                                               ; preds = %5
  %27 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %28 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %31 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %39 = call i64 @celleb_epci_get_epci_base(%struct.pci_controller* %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %57 [
    i32 1, label %45
    i32 2, label %49
    i32 4, label %53
  ]

45:                                               ; preds = %37
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @in_8(i64 %46)
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %59

49:                                               ; preds = %37
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @in_be16(i64 %50)
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %59

53:                                               ; preds = %37
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @in_be32(i64 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  br label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %58, i32* %6, align 4
  br label %94

59:                                               ; preds = %53, %49, %45
  br label %84

60:                                               ; preds = %34, %26
  %61 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %62 = call i32 @clear_and_disable_master_abort_interrupt(%struct.pci_controller* %61)
  %63 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %64 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @celleb_epci_make_config_addr(%struct.pci_bus* %63, %struct.pci_controller* %64, i32 %65, i32 %66)
  store i64 %67, i64* %13, align 8
  %68 = load i32, i32* %10, align 4
  switch i32 %68, label %81 [
    i32 1, label %69
    i32 2, label %73
    i32 4, label %77
  ]

69:                                               ; preds = %60
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @in_8(i64 %70)
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  br label %83

73:                                               ; preds = %60
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @in_le16(i64 %74)
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %83

77:                                               ; preds = %60
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @in_le32(i64 %78)
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  br label %83

81:                                               ; preds = %60
  %82 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %82, i32* %6, align 4
  br label %94

83:                                               ; preds = %77, %73, %69
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i64, i64* %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %85, i32 %86, i32 %87, i32 %88, i32 %90)
  %92 = load %struct.pci_controller*, %struct.pci_controller** %14, align 8
  %93 = call i32 @celleb_epci_check_abort(%struct.pci_controller* %92, i32* null)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %84, %81, %57, %24
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @celleb_epci_get_epci_cfg(%struct.pci_controller*) #1

declare dso_local i64 @celleb_epci_get_epci_base(%struct.pci_controller*) #1

declare dso_local i32 @in_8(i64) #1

declare dso_local i32 @in_be16(i64) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @clear_and_disable_master_abort_interrupt(%struct.pci_controller*) #1

declare dso_local i64 @celleb_epci_make_config_addr(%struct.pci_bus*, %struct.pci_controller*, i32, i32) #1

declare dso_local i32 @in_le16(i64) #1

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @celleb_epci_check_abort(%struct.pci_controller*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
