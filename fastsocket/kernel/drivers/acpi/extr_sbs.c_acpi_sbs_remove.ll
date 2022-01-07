; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sbs.c_acpi_sbs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_sbs = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SBS_BAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i32)* @acpi_sbs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sbs_remove(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_sbs*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = call %struct.acpi_sbs* @acpi_driver_data(%struct.acpi_device* %14)
  store %struct.acpi_sbs* %15, %struct.acpi_sbs** %6, align 8
  %16 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %17 = icmp ne %struct.acpi_sbs* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %13
  %22 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @acpi_smbus_unregister_callback(i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %37, %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MAX_SBS_BAT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @acpi_battery_remove(%struct.acpi_sbs* %34, i32 %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %29

40:                                               ; preds = %29
  %41 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %42 = call i32 @acpi_charger_remove(%struct.acpi_sbs* %41)
  %43 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %47 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %46, i32 0, i32 0
  %48 = call i32 @mutex_destroy(i32* %47)
  %49 = load %struct.acpi_sbs*, %struct.acpi_sbs** %6, align 8
  %50 = call i32 @kfree(%struct.acpi_sbs* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %40, %18, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.acpi_sbs* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_smbus_unregister_callback(i32) #1

declare dso_local i32 @acpi_battery_remove(%struct.acpi_sbs*, i32) #1

declare dso_local i32 @acpi_charger_remove(%struct.acpi_sbs*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_sbs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
