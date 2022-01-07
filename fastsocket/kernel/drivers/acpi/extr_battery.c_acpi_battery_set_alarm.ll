; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BTP\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Alarm set to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_set_alarm(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object, align 4
  %6 = alloca %struct.acpi_object_list, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = bitcast %union.acpi_object* %5 to i32*
  %8 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %6, i32 0, i32 1
  store %union.acpi_object* %5, %union.acpi_object** %10, align 8
  %11 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %12 = call i32 @acpi_battery_present(%struct.acpi_battery* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %14
  %23 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %union.acpi_object* %5 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @acpi_evaluate_object(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %6, i32* null)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %22
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %22
  %47 = load i32, i32* @ACPI_DB_INFO, align 4
  %48 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %43, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
