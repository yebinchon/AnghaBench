; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_walk_package_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_walk_package_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%union.acpi_generic_state = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64* }

@AE_OK = common dso_local global i32 0, align 4
@ut_walk_package_tree = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_COPY_TYPE_SIMPLE = common dso_local global i32 0, align 4
@ACPI_COPY_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_walk_package_tree(%union.acpi_operand_object* %0, i8* %1, i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_generic_state*, align 8
  %12 = alloca %union.acpi_generic_state*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* %2, i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %10, align 4
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %11, align 8
  %16 = load i32, i32* @ut_walk_package_tree, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %union.acpi_generic_state* @acpi_ut_create_pkg_state(%union.acpi_operand_object* %18, i8* %19, i32 0)
  store %union.acpi_generic_state* %20, %union.acpi_generic_state** %12, align 8
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %22 = icmp ne %union.acpi_generic_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @AE_NO_MEMORY, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %4
  br label %27

27:                                               ; preds = %144, %26
  %28 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %29 = icmp ne %union.acpi_generic_state* %28, null
  br i1 %29, label %30, label %145

30:                                               ; preds = %27
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %32 = bitcast %union.acpi_generic_state* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %36 = bitcast %union.acpi_generic_state* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %45, %union.acpi_operand_object** %14, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %47 = icmp ne %union.acpi_operand_object* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %30
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %50 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %49)
  %51 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %108

60:                                               ; preds = %53, %48, %30
  %61 = load i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %8, align 8
  %62 = load i32, i32* @ACPI_COPY_TYPE_SIMPLE, align 4
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %64 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 %61(i32 %62, %union.acpi_operand_object* %63, %union.acpi_generic_state* %64, i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @ACPI_FAILURE(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @return_ACPI_STATUS(i32 %71)
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %75 = bitcast %union.acpi_generic_state* %74 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %101, %73
  %80 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %81 = bitcast %union.acpi_generic_state* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %85 = bitcast %union.acpi_generic_state* %84 to %struct.TYPE_8__*
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %83, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %79
  %93 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %94 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %93)
  %95 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %11)
  store %union.acpi_generic_state* %95, %union.acpi_generic_state** %12, align 8
  %96 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %97 = icmp ne %union.acpi_generic_state* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @AE_OK, align 4
  %100 = call i32 @return_ACPI_STATUS(i32 %99)
  br label %101

101:                                              ; preds = %98, %92
  %102 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %103 = bitcast %union.acpi_generic_state* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %79

107:                                              ; preds = %79
  br label %144

108:                                              ; preds = %53
  %109 = load i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)*, i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)** %8, align 8
  %110 = load i32, i32* @ACPI_COPY_TYPE_PACKAGE, align 4
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %112 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 %109(i32 %110, %union.acpi_operand_object* %111, %union.acpi_generic_state* %112, i8* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @ACPI_FAILURE(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @return_ACPI_STATUS(i32 %119)
  br label %121

121:                                              ; preds = %118, %108
  %122 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %123 = call i32 @acpi_ut_push_generic_state(%union.acpi_generic_state** %11, %union.acpi_generic_state* %122)
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %125 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %126 = bitcast %union.acpi_generic_state* %125 to %struct.TYPE_8__*
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = call %union.acpi_generic_state* @acpi_ut_create_pkg_state(%union.acpi_operand_object* %124, i8* %128, i32 0)
  store %union.acpi_generic_state* %129, %union.acpi_generic_state** %12, align 8
  %130 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %131 = icmp ne %union.acpi_generic_state* %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %136, %132
  %134 = load %union.acpi_generic_state*, %union.acpi_generic_state** %11, align 8
  %135 = icmp ne %union.acpi_generic_state* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %11)
  store %union.acpi_generic_state* %137, %union.acpi_generic_state** %12, align 8
  %138 = load %union.acpi_generic_state*, %union.acpi_generic_state** %12, align 8
  %139 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %138)
  br label %133

140:                                              ; preds = %133
  %141 = load i32, i32* @AE_NO_MEMORY, align 4
  %142 = call i32 @return_ACPI_STATUS(i32 %141)
  br label %143

143:                                              ; preds = %140, %121
  br label %144

144:                                              ; preds = %143, %107
  br label %27

145:                                              ; preds = %27
  %146 = load i32, i32* @AE_AML_INTERNAL, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_pkg_state(%union.acpi_operand_object*, i8*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @acpi_ut_push_generic_state(%union.acpi_generic_state**, %union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
