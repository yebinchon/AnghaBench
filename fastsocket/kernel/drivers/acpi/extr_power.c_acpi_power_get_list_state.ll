; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_get_list_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_get_list_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_handle_list = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_POWER_RESOURCE_STATE_ON = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Resource list is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_handle_list*, i32*)* @acpi_power_get_list_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_power_get_list_state(%struct.acpi_handle_list* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_handle_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.acpi_handle_list* %0, %struct.acpi_handle_list** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %4, align 8
  %10 = icmp ne %struct.acpi_handle_list* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @acpi_power_get_state(i32 %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ACPI_POWER_RESOURCE_STATE_ON, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %18

48:                                               ; preds = %43, %18
  %49 = load i32, i32* @ACPI_DB_INFO, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %55 = ptrtoint i8* %54 to i32
  %56 = call i32 @ACPI_DEBUG_PRINT(i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %34, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @acpi_power_get_state(i32, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
