; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_report_method_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_report_method_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ACPI Error (%s-%04d): \00", align 1
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[Could not get node by pathname]\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c", %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_report_method_error(i8* %0, i32 %1, i8* %2, %struct.acpi_namespace_node* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.acpi_namespace_node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_namespace_node*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.acpi_namespace_node* %3, %struct.acpi_namespace_node** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %25 = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %22, i8* %23, i32 %24, %struct.acpi_namespace_node** %14)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  br label %32

32:                                               ; preds = %31, %6
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %14, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @acpi_ns_print_node_pathname(%struct.acpi_namespace_node* %33, i8* %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @acpi_format_exception(i32 %36)
  %38 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i8*, i32, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_print_node_pathname(%struct.acpi_namespace_node*, i8*) #1

declare dso_local i32 @acpi_format_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
