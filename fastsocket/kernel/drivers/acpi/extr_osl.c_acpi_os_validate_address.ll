; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_validate_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_validate_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_res_list = type { i32, i32, i64, i64 }

@acpi_enforce_resources = common dso_local global i64 0, align 8
@ENFORCE_RESOURCES_NO = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@acpi_res_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s %s resource: start: 0x%llx, end: 0x%llx, name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Added\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Already exist\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SystemIO\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"System Memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_validate_address(i32 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.acpi_res_list*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* @acpi_enforce_resources, align 8
  %13 = load i64, i64* @ENFORCE_RESOURCES_NO, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %5, align 4
  br label %75

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %73 [
    i32 129, label %19
    i32 128, label %19
    i32 131, label %72
    i32 134, label %72
    i32 130, label %72
    i32 136, label %72
    i32 132, label %72
    i32 135, label %72
    i32 133, label %72
  ]

19:                                               ; preds = %17, %17
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.acpi_res_list* @kzalloc(i32 24, i32 %20)
  store %struct.acpi_res_list* %21, %struct.acpi_res_list** %10, align 8
  %22 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %23 = icmp ne %struct.acpi_res_list* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @AE_OK, align 4
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %19
  %27 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strlcpy(i32 %29, i8* %30, i32 5)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %34 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = sub nsw i64 %37, 1
  %39 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %40 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %43 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = call i32 @spin_lock(i32* @acpi_res_lock)
  %45 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %46 = call i32 @acpi_res_list_add(%struct.acpi_res_list* %45)
  store i32 %46, i32* %11, align 4
  %47 = call i32 @spin_unlock(i32* @acpi_res_lock)
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 129
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %56 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %57 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %60 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %63 = getelementptr inbounds %struct.acpi_res_list, %struct.acpi_res_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %55, i64 %58, i64 %61, i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %26
  %69 = load %struct.acpi_res_list*, %struct.acpi_res_list** %10, align 8
  %70 = call i32 @kfree(%struct.acpi_res_list* %69)
  br label %71

71:                                               ; preds = %68, %26
  br label %73

72:                                               ; preds = %17, %17, %17, %17, %17, %17, %17
  br label %73

73:                                               ; preds = %17, %72, %71
  %74 = load i32, i32* @AE_OK, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %24, %15
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.acpi_res_list* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @acpi_res_list_add(%struct.acpi_res_list*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*, i64, i64, i32) #1

declare dso_local i32 @kfree(%struct.acpi_res_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
