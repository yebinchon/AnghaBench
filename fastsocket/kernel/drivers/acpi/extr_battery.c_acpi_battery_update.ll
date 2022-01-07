; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*, i32)* @acpi_battery_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_update(%struct.acpi_battery* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_battery*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_battery* %0, %struct.acpi_battery** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %9 = call i32 @acpi_battery_present(%struct.acpi_battery* %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %11 = call i32 @acpi_battery_get_status(%struct.acpi_battery* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %24 = call i32 @acpi_battery_present(%struct.acpi_battery* %23)
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %21, %16
  %27 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %28 = call i32 @acpi_battery_get_info(%struct.acpi_battery* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %47

33:                                               ; preds = %26
  %34 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %35 = call i32 @acpi_battery_quirks(%struct.acpi_battery* %34)
  %36 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %37 = call i32 @acpi_battery_init_alarm(%struct.acpi_battery* %36)
  br label %38

38:                                               ; preds = %33, %21
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %43 = call i32 @acpi_battery_get_info(%struct.acpi_battery* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.acpi_battery*, %struct.acpi_battery** %4, align 8
  %46 = call i32 @acpi_battery_get_state(%struct.acpi_battery* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %31, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_get_status(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_get_info(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_quirks(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_init_alarm(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_get_state(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
