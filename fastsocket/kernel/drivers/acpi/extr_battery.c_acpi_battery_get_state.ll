; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_battery.c_acpi_battery_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_buffer = type { i32, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@cache_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_BST\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _BST\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@state_offsets = common dso_local global i32 0, align 4
@QUIRK_SIGNED16_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*)* @acpi_battery_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_get_state(%struct.acpi_battery* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = bitcast %struct.acpi_buffer* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %9, i32* %8, align 8
  %10 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %11 = call i32 @acpi_battery_present(%struct.acpi_battery* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @cache_time, align 4
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i64 @time_before(i64 %20, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %86

30:                                               ; preds = %19, %14
  %31 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_evaluate_object(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %40, i32 0, i32 3
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load i32, i32* @AE_INFO, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %30
  %53 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @state_offsets, align 4
  %57 = load i32, i32* @state_offsets, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = call i32 @extract_package(%struct.acpi_battery* %53, i32 %55, i32 %56, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i64, i64* @jiffies, align 8
  %61 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @QUIRK_SIGNED16_CURRENT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %52
  %73 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %79 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @abs(i32 %80) #4
  %82 = load %struct.acpi_battery*, %struct.acpi_battery** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %72, %52
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %46, %29, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #2

declare dso_local i64 @time_before(i64, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

declare dso_local i32 @extract_package(%struct.acpi_battery*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @kfree(i32) #2

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
