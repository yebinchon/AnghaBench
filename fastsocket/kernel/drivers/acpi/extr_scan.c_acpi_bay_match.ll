; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bay_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bay_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_GTF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_GTM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_STM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_SDD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bay_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bay_match(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @acpi_get_handle(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @acpi_get_handle(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @acpi_get_handle(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %27 = call i64 @ACPI_SUCCESS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @acpi_get_handle(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @acpi_get_handle(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %37 = call i64 @ACPI_SUCCESS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %24, %19
  store i32 0, i32* %2, align 4
  br label %71

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @acpi_get_parent(i32 %41, i32* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @acpi_get_handle(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %50 = call i64 @ACPI_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @acpi_get_handle(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %55 = call i64 @ACPI_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @acpi_get_handle(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %60 = call i64 @ACPI_SUCCESS(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @acpi_get_handle(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  %65 = call i64 @ACPI_SUCCESS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57, %52, %47
  store i32 0, i32* %2, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %67, %44, %39, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i64 @acpi_get_parent(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
