; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfname.c_acpi_get_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsxfname.c_acpi_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_NS_ROOT_PATH = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_get_handle(i64 %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %struct.acpi_namespace_node*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %9, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %10, align 8
  %11 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %12 = load i64*, i64** %7, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %18, i32* %4, align 4
  br label %67

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i64 %23)
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %10, align 8
  %25 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %26 = icmp ne %struct.acpi_namespace_node* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @acpi_ns_valid_root_prefix(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @ACPI_NS_ROOT_PATH, align 4
  %39 = call i32 @ACPI_STRCMP(i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %43 = call i64 @acpi_ns_convert_entry_to_handle(%struct.acpi_namespace_node* %42)
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @AE_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %67

46:                                               ; preds = %36
  br label %53

47:                                               ; preds = %30
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %49 = icmp ne %struct.acpi_namespace_node* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %51, i32* %4, align 4
  br label %67

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %57 = call i32 @acpi_ns_get_node(%struct.acpi_namespace_node* %54, i32* %55, i32 %56, %struct.acpi_namespace_node** %9)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @ACPI_SUCCESS(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %63 = call i64 @acpi_ns_convert_entry_to_handle(%struct.acpi_namespace_node* %62)
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %50, %41, %27, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i64) #1

declare dso_local i64 @acpi_ns_valid_root_prefix(i32) #1

declare dso_local i32 @ACPI_STRCMP(i32*, i32) #1

declare dso_local i64 @acpi_ns_convert_entry_to_handle(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_get_node(%struct.acpi_namespace_node*, i32*, i32, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
