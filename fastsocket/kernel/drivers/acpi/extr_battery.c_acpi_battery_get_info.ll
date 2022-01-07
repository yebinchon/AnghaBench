; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_buffer = type { i32, i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BIF\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _BIF\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@info_offsets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_get_info(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  %7 = load i32, i32* @EFAULT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = bitcast %struct.acpi_buffer* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %11, i32* %10, align 8
  %12 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %13 = call i32 @acpi_battery_present(%struct.acpi_battery* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

16:                                               ; preds = %1
  %17 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @acpi_evaluate_object(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load i32, i32* @AE_INFO, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %50

38:                                               ; preds = %16
  %39 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @info_offsets, align 4
  %43 = load i32, i32* @info_offsets, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @extract_package(%struct.acpi_battery* %39, i32 %41, i32 %42, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kfree(i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %38, %32, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

declare dso_local i32 @extract_package(%struct.acpi_battery*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @kfree(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
