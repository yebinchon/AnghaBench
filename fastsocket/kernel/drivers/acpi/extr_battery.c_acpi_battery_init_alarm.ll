; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_init_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_init_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BTP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_init_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_init_alarm(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @acpi_get_handle(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  store i32 0, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %34 = call i32 @acpi_battery_set_alarm(%struct.acpi_battery* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_battery_set_alarm(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
