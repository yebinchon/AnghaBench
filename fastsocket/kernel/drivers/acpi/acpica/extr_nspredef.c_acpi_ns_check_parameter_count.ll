; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_parameter_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_parameter_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.acpi_predefined_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@ACPI_WARN_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Insufficient arguments - needs %u, found %u\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Excess arguments - needs %u, found %u\00", align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Parameter count mismatch - caller passed %u, ACPI requires %u\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"Parameter count mismatch - ASL declared %u, ACPI requires %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_check_parameter_count(i8* %0, %struct.acpi_namespace_node* %1, i32 %2, %union.acpi_predefined_info* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_namespace_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_predefined_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %union.acpi_predefined_info* %3, %union.acpi_predefined_info** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %17, %4
  %25 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %8, align 8
  %26 = icmp ne %union.acpi_predefined_info* %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @AE_INFO, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ACPI_WARN_PREDEFINED(i32 %36)
  br label %50

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @AE_INFO, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ACPI_WARN_PREDEFINED(i32 %47)
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49, %31
  br label %98

51:                                               ; preds = %24
  %52 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %8, align 8
  %53 = bitcast %union.acpi_predefined_info* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  store i32 %56, i32* %10, align 4
  %57 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %8, align 8
  %58 = bitcast %union.acpi_predefined_info* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* @AE_INFO, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ACPI_WARN_PREDEFINED(i32 %78)
  br label %80

80:                                               ; preds = %73, %69, %65
  br label %81

81:                                               ; preds = %80, %51
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* @AE_INFO, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %6, align 8
  %93 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ACPI_WARN_PREDEFINED(i32 %96)
  br label %98

98:                                               ; preds = %50, %89, %85, %81
  ret void
}

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
