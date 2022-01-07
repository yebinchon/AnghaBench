; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_build_external_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_build_external_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.acpi_namespace_node*, i32 }

@ACPI_NAME_SIZE = common dso_local global i32 0, align 4
@AML_ROOT_PREFIX = common dso_local global i8 0, align 1
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_PATH_SEPARATOR = common dso_local global i8 0, align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Could not construct external pathname; index=%X, size=%X, Path=%s\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_build_external_path(%struct.acpi_namespace_node* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_namespace_node*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8, i8* @AML_ROOT_PREFIX, align 1
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 0, i8* %21, align 1
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  store %struct.acpi_namespace_node* %24, %struct.acpi_namespace_node** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %39, %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %36 = icmp ne %struct.acpi_namespace_node* %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %60

39:                                               ; preds = %37
  %40 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %48 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %47, i32 0, i32 1
  %49 = call i32 @ACPI_MOVE_32_TO_32(i8* %46, i32* %48)
  %50 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %51 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %50, i32 0, i32 0
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %51, align 8
  store %struct.acpi_namespace_node* %52, %struct.acpi_namespace_node** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = load i8, i8* @ACPI_PATH_SEPARATOR, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  br label %29

60:                                               ; preds = %37
  %61 = load i8, i8* @AML_ROOT_PREFIX, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %60
  %69 = load i32, i32* @AE_INFO, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = ptrtoint i8* %75 to i32
  %77 = call i32 @ACPI_ERROR(i32 %76)
  %78 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %78, i32* %4, align 4
  br label %81

79:                                               ; preds = %60
  %80 = load i32, i32* @AE_OK, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %68, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i8*, i32*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
