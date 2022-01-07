; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_by_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_delete_namespace_by_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, %struct.acpi_namespace_node*, i64 }

@ns_delete_namespace_by_owner = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_delete_namespace_by_owner(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @ns_delete_namespace_by_owner, align 4
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %8, i64 %9)
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @return_VOID, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %17 = call i32 @acpi_ut_acquire_mutex(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @return_VOID, align 4
  br label %23

23:                                               ; preds = %21, %15
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %4, align 8
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %89, %23
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %90

28:                                               ; preds = %25
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %31 = call %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node* %29, %struct.acpi_namespace_node* %30)
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %3, align 8
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %33 = icmp ne %struct.acpi_namespace_node* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %36 = call i32 @acpi_ns_delete_children(%struct.acpi_namespace_node* %35)
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %38 = call i32 @acpi_ns_remove_node(%struct.acpi_namespace_node* %37)
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %4, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %41 = icmp ne %struct.acpi_namespace_node* %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %50 = call i32 @acpi_ns_detach_object(%struct.acpi_namespace_node* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %53 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %59, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %3, align 8
  br label %69

60:                                               ; preds = %51
  %61 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %2, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  store %struct.acpi_namespace_node* %67, %struct.acpi_namespace_node** %4, align 8
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %56
  br label %89

70:                                               ; preds = %39
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %77 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* %82, %struct.acpi_namespace_node** %4, align 8
  br label %83

83:                                               ; preds = %81, %75
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* %85, %struct.acpi_namespace_node** %3, align 8
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %87 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %86, i32 0, i32 1
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %87, align 8
  store %struct.acpi_namespace_node* %88, %struct.acpi_namespace_node** %5, align 8
  br label %89

89:                                               ; preds = %84, %69
  br label %25

90:                                               ; preds = %25
  %91 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %92 = call i32 @acpi_ut_release_mutex(i32 %91)
  %93 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_get_next_node(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_delete_children(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_remove_node(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ns_detach_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
