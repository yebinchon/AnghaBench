; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_init_one_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_init_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i64, i32, i32, i32, i32 }
%struct.acpi_namespace_node = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"During Region initialization %p [%4.4s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_ds_init_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_init_one_object(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_init_walk_info*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acpi_init_walk_info*
  store %struct.acpi_init_walk_info* %15, %struct.acpi_init_walk_info** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %11, align 8
  %18 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %20 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %23 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %67

28:                                               ; preds = %4
  %29 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %30 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @acpi_ns_get_type(i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %64 [
    i32 128, label %36
    i32 129, label %54
    i32 130, label %59
  ]

36:                                               ; preds = %28
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @acpi_ds_initialize_region(i64 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @ACPI_FAILURE(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @acpi_ut_get_node_name(i64 %46)
  %48 = call i32 @ACPI_EXCEPTION(i32 %47)
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %51 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %65

54:                                               ; preds = %28
  %55 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %56 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %65

59:                                               ; preds = %28
  %60 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %61 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %65

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64, %59, %54, %49
  %66 = load i32, i32* @AE_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_ns_get_type(i64) #1

declare dso_local i32 @acpi_ds_initialize_region(i64) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
