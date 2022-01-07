; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_attach_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_attach_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i64, %struct.acpi_namespace_node*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { i64 }

@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@ns_attach_object = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Null NamedObj handle\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Null object, but type not ACPI_TYPE_ANY\00", align 1
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid handle %p [%s]\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Obj %p already installed in NameObj %p\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Installing %p into Node %p [%4.4s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %0, %union.acpi_operand_object* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* @ns_attach_object, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %15 = icmp ne %struct.acpi_namespace_node* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @AE_INFO, align 4
  %18 = call i32 @ACPI_ERROR(i32 ptrtoint ([21 x i8]* @.str to i32))
  %19 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %23 = icmp ne %union.acpi_operand_object* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @ACPI_TYPE_ANY, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = call i32 @ACPI_ERROR(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  %31 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %28, %24, %21
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %35 = bitcast %struct.acpi_namespace_node* %34 to %union.acpi_operand_object*
  %36 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %35)
  %37 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i32, i32* @AE_INFO, align 4
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %43 = bitcast %struct.acpi_namespace_node* %42 to %union.acpi_operand_object*
  %44 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %43)
  %45 = call i32 @ACPI_ERROR(i32 %44)
  %46 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %39, %33
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %49, i32 0, i32 1
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %50, align 8
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.acpi_namespace_node*
  %54 = icmp eq %struct.acpi_namespace_node* %51, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* @ACPI_DB_EXEC, align 4
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %59 = ptrtoint %struct.acpi_namespace_node* %58 to i32
  %60 = call i32 @ACPI_DEBUG_PRINT(i32 %59)
  %61 = load i32, i32* @AE_OK, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %65 = icmp ne %union.acpi_operand_object* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %67 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %67, i64* %10, align 8
  br label %93

68:                                               ; preds = %63
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %70 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %69)
  %71 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.acpi_namespace_node*
  %76 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %75, i32 0, i32 1
  %77 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %76, align 8
  %78 = icmp ne %struct.acpi_namespace_node* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %81 = bitcast %union.acpi_operand_object* %80 to %struct.acpi_namespace_node*
  %82 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %81, i32 0, i32 1
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %82, align 8
  %84 = bitcast %struct.acpi_namespace_node* %83 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %84, %union.acpi_operand_object** %8, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.acpi_namespace_node*
  %87 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  br label %92

89:                                               ; preds = %73, %68
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %90, %union.acpi_operand_object** %8, align 8
  %91 = load i64, i64* %7, align 8
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %89, %79
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32, i32* @ACPI_DB_EXEC, align 4
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %97 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %98 = bitcast %struct.acpi_namespace_node* %97 to %union.acpi_operand_object*
  %99 = call i32 @acpi_ut_get_node_name(%union.acpi_operand_object* %98)
  %100 = call i32 @ACPI_DEBUG_PRINT(i32 %99)
  %101 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %101, i32 0, i32 1
  %103 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %102, align 8
  %104 = icmp ne %struct.acpi_namespace_node* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %93
  %106 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %107 = bitcast %struct.acpi_namespace_node* %106 to %union.acpi_operand_object*
  %108 = call i32 @acpi_ns_detach_object(%union.acpi_operand_object* %107)
  br label %109

109:                                              ; preds = %105, %93
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %111 = icmp ne %union.acpi_operand_object* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %114 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %113)
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %115, %union.acpi_operand_object** %9, align 8
  br label %116

116:                                              ; preds = %122, %112
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_2__*
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %119, align 8
  %121 = icmp ne %union.acpi_operand_object* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %124 = bitcast %union.acpi_operand_object* %123 to %struct.TYPE_2__*
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %125, align 8
  store %union.acpi_operand_object* %126, %union.acpi_operand_object** %9, align 8
  br label %116

127:                                              ; preds = %116
  %128 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %129 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %128, i32 0, i32 1
  %130 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %129, align 8
  %131 = bitcast %struct.acpi_namespace_node* %130 to %union.acpi_operand_object*
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %133 = bitcast %union.acpi_operand_object* %132 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store %union.acpi_operand_object* %131, %union.acpi_operand_object** %134, align 8
  br label %135

135:                                              ; preds = %127, %109
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %138 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %140 = bitcast %union.acpi_operand_object* %139 to %struct.acpi_namespace_node*
  %141 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %142 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %141, i32 0, i32 1
  store %struct.acpi_namespace_node* %140, %struct.acpi_namespace_node** %142, align 8
  %143 = load i32, i32* @AE_OK, align 4
  %144 = call i32 @return_ACPI_STATUS(i32 %143)
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_detach_object(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
