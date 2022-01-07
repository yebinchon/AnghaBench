; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fam15h_power.c_show_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fam15h_power.c_show_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.fam15h_power_data = type { i32, i32 }

@REG_TDP_RUNNING_AVERAGE = common dso_local global i32 0, align 4
@REG_TDP_LIMIT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_power(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.fam15h_power_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(%struct.device* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.fam15h_power_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.fam15h_power_data* %17, %struct.fam15h_power_data** %13, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  %25 = call i32 @PCI_DEVFN(i32 %24, i32 5)
  %26 = load i32, i32* @REG_TDP_RUNNING_AVERAGE, align 4
  %27 = call i32 @pci_bus_read_config_dword(i32 %20, i32 %25, i32 %26, i32* %7)
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 4194303
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @sign_extend32(i32 %31, i32 21)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PCI_SLOT(i32 %41)
  %43 = call i32 @PCI_DEVFN(i32 %42, i32 5)
  %44 = load i32, i32* @REG_TDP_LIMIT3, align 4
  %45 = call i32 @pci_bus_read_config_dword(i32 %38, i32 %43, i32 %44, i32* %7)
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 16
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %13, align 8
  %50 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 %52, %53
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.fam15h_power_data*, %struct.fam15h_power_data** %13, align 8
  %59 = getelementptr inbounds %struct.fam15h_power_data, %struct.fam15h_power_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %63, 15625
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 10, %65
  %67 = ashr i32 %64, %66
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  ret i32 %70
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.fam15h_power_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pci_bus_read_config_dword(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
