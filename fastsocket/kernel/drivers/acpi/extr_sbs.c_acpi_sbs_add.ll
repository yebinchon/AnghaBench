; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_sbs*, i32 }
%struct.acpi_sbs = type { i32, i32, i32, %struct.acpi_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_SBS_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_SBS_CLASS = common dso_local global i32 0, align 4
@MAX_SBS_BAT = common dso_local global i32 0, align 4
@acpi_sbs_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_sbs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sbs_add(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca %struct.acpi_sbs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.acpi_sbs* @kzalloc(i32 32, i32 %6)
  store %struct.acpi_sbs* %7, %struct.acpi_sbs** %3, align 8
  %8 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %9 = icmp ne %struct.acpi_sbs* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %14, i32 0, i32 4
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @acpi_driver_data(i32 %19)
  %21 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %24 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %24, i32 0, i32 3
  store %struct.acpi_device* %23, %struct.acpi_device** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %27 = call i32 @acpi_device_name(%struct.acpi_device* %26)
  %28 = load i32, i32* @ACPI_SBS_DEVICE_NAME, align 4
  %29 = call i32 @strcpy(i32 %27, i32 %28)
  %30 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %31 = call i32 @acpi_device_class(%struct.acpi_device* %30)
  %32 = load i32, i32* @ACPI_SBS_CLASS, align 4
  %33 = call i32 @strcpy(i32 %31, i32 %32)
  %34 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %35 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  store %struct.acpi_sbs* %34, %struct.acpi_sbs** %36, align 8
  %37 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %38 = call i32 @acpi_charger_add(%struct.acpi_sbs* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %13
  br label %81

42:                                               ; preds = %13
  %43 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %44 = call i32 @acpi_manager_get_info(%struct.acpi_sbs* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %42
  %48 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %67, %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAX_SBS_BAT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @acpi_battery_add(%struct.acpi_sbs* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %50

70:                                               ; preds = %50
  br label %74

71:                                               ; preds = %42
  %72 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %73 = call i32 @acpi_battery_add(%struct.acpi_sbs* %72, i32 0)
  br label %74

74:                                               ; preds = %71, %70
  %75 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %76 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @acpi_sbs_callback, align 4
  %79 = load %struct.acpi_sbs*, %struct.acpi_sbs** %3, align 8
  %80 = call i32 @acpi_smbus_register_callback(i32 %77, i32 %78, %struct.acpi_sbs* %79)
  br label %81

81:                                               ; preds = %74, %41, %10
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %86 = call i32 @acpi_sbs_remove(%struct.acpi_device* %85, i32 0)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.acpi_sbs* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @acpi_driver_data(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @acpi_charger_add(%struct.acpi_sbs*) #1

declare dso_local i32 @acpi_manager_get_info(%struct.acpi_sbs*) #1

declare dso_local i32 @acpi_battery_add(%struct.acpi_sbs*, i32) #1

declare dso_local i32 @acpi_smbus_register_callback(i32, i32, %struct.acpi_sbs*) #1

declare dso_local i32 @acpi_sbs_remove(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
