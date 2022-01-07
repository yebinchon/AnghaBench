; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_install_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsalloc.c_acpi_ns_install_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_4__*, %struct.acpi_namespace_node*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_namespace_node = type { i64, i32, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node* }

@ns_install_node = common dso_local global i32 0, align 4
@AOPOBJ_MODIFIED_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"%4.4s (%s) [Node %p Owner %X] added to %4.4s (%s) [Node %p]\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_install_node(%struct.acpi_walk_state* %0, %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node* %2, i64 %3) #0 {
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store %struct.acpi_namespace_node* %2, %struct.acpi_namespace_node** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @ns_install_node, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %14 = icmp ne %struct.acpi_walk_state* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %4
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %20 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 1
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %26, align 8
  %28 = icmp ne %struct.acpi_namespace_node* %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @AOPOBJ_MODIFIED_NAMESPACE, align 4
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %29, %23, %15
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %41 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %40, i32 0, i32 2
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %41, align 8
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %43 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %43, i32 0, i32 4
  store %struct.acpi_namespace_node* %42, %struct.acpi_namespace_node** %44, align 8
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 3
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %46, align 8
  store %struct.acpi_namespace_node* %47, %struct.acpi_namespace_node** %10, align 8
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %49 = icmp ne %struct.acpi_namespace_node* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %39
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %53 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %52, i32 0, i32 3
  store %struct.acpi_namespace_node* %51, %struct.acpi_namespace_node** %53, align 8
  br label %68

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %60, %54
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %57 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %56, i32 0, i32 2
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %57, align 8
  %59 = icmp ne %struct.acpi_namespace_node* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %62 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %61, i32 0, i32 2
  %63 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %62, align 8
  store %struct.acpi_namespace_node* %63, %struct.acpi_namespace_node** %10, align 8
  br label %55

64:                                               ; preds = %55
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %66 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %10, align 8
  %67 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %66, i32 0, i32 2
  store %struct.acpi_namespace_node* %65, %struct.acpi_namespace_node** %67, align 8
  br label %68

68:                                               ; preds = %64, %50
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %71 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %74 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @ACPI_DB_NAMES, align 4
  %76 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %77 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %76)
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %79 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @acpi_ut_get_type_name(i64 %80)
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %85 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %84)
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %87 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @acpi_ut_get_type_name(i64 %88)
  %90 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %91 = ptrtoint %struct.acpi_namespace_node* %90 to i32
  %92 = call i32 @ACPI_DEBUG_PRINT(i32 %91)
  %93 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_get_type_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
