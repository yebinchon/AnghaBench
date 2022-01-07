; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_fake_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_celleb_pci.c_celleb_fake_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pci_controller = type { i32 }
%struct.celleb_pci_resource = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"    fake write: where=%x, size=%d, val=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i64)* @celleb_fake_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celleb_fake_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pci_controller*, align 8
  %14 = alloca %struct.celleb_pci_resource*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %19 = call %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus* %18)
  store %struct.pci_controller* %19, %struct.pci_controller** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = lshr i32 %20, 3
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = srem i32 %24, %25
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = call i8* @get_fake_config_start(%struct.pci_controller* %28, i32 %29, i32 %30)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %35, i32* %6, align 4
  br label %95

36:                                               ; preds = %5
  %37 = load i64, i64* %11, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %84

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 133
  %42 = ashr i32 %41, 3
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %82 [
    i32 133, label %44
    i32 131, label %44
    i32 132, label %81
    i32 130, label %81
    i32 129, label %81
    i32 128, label %81
  ]

44:                                               ; preds = %39, %39
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 4
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %48, i32* %6, align 4
  br label %95

49:                                               ; preds = %44
  %50 = load %struct.pci_controller*, %struct.pci_controller** %13, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call %struct.celleb_pci_resource* @get_resource_start(%struct.pci_controller* %50, i32 %51, i32 %52)
  store %struct.celleb_pci_resource* %53, %struct.celleb_pci_resource** %14, align 8
  %54 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %14, align 8
  %55 = icmp ne %struct.celleb_pci_resource* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %57, i32* %6, align 4
  br label %95

58:                                               ; preds = %49
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %14, align 8
  %63 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.celleb_pci_resource*, %struct.celleb_pci_resource** %14, align 8
  %71 = getelementptr inbounds %struct.celleb_pci_resource, %struct.celleb_pci_resource* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %69, %77
  %79 = call i32 @celleb_config_write_fake(i8* %59, i32 %60, i32 %61, i64 %78)
  %80 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %80, i32* %6, align 4
  br label %95

81:                                               ; preds = %39, %39, %39, %39
  br label %83

82:                                               ; preds = %39
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %36
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @celleb_config_write_fake(i8* %85, i32 %86, i32 %87, i64 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i64 %92)
  %94 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %84, %58, %56, %47, %34
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.pci_controller* @pci_bus_to_host(%struct.pci_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @get_fake_config_start(%struct.pci_controller*, i32, i32) #1

declare dso_local %struct.celleb_pci_resource* @get_resource_start(%struct.pci_controller*, i32, i32) #1

declare dso_local i32 @celleb_config_write_fake(i8*, i32, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
