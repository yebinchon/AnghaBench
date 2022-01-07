; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_initialize_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_initialize_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32, %struct.acpi_namespace_node* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.acpi_namespace_node* }
%struct.TYPE_13__ = type { %union.acpi_operand_object* }
%struct.TYPE_14__ = type { %union.acpi_operand_object* }
%struct.TYPE_15__ = type { %union.acpi_operand_object* }
%struct.TYPE_16__ = type { i64, %union.acpi_operand_object* }

@METHOD_NAME__REG = common dso_local global i64 0, align 8
@ev_initialize_region = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AOPOBJ_OBJECT_INITIALIZED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Found handler %p for region %p in obj %p\0A\00", align 1
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"No handler for RegionType %s(%X) (RegionObj %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_initialize_region(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @METHOD_NAME__REG, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i32, i32* @ev_initialize_region, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %16, i32 %17)
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_11__*
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AOPOBJ_OBJECT_INITIALIZED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @AE_OK, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %37 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %36)
  store %union.acpi_operand_object* %37, %union.acpi_operand_object** %13, align 8
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %39 = icmp ne %union.acpi_operand_object* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @AE_NOT_EXIST, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %48, align 8
  store %struct.acpi_namespace_node* %49, %struct.acpi_namespace_node** %9, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_10__*
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_12__*
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %59, align 8
  %60 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %61 = xor i32 %60, -1
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %61
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* @AOPOBJ_OBJECT_INITIALIZED, align 4
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_11__*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %76 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %77 = call i32 @acpi_ns_search_one_scope(i32 %74, %struct.acpi_namespace_node* %75, i32 %76, %struct.acpi_namespace_node** %11)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @ACPI_SUCCESS(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %43
  %82 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_12__*
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  store %struct.acpi_namespace_node* %82, %struct.acpi_namespace_node** %85, align 8
  br label %86

86:                                               ; preds = %81, %43
  br label %87

87:                                               ; preds = %173, %86
  %88 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %89 = icmp ne %struct.acpi_namespace_node* %88, null
  br i1 %89, label %90, label %177

90:                                               ; preds = %87
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %6, align 8
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %92 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %91)
  store %union.acpi_operand_object* %92, %union.acpi_operand_object** %7, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %94 = icmp ne %union.acpi_operand_object* %93, null
  br i1 %94, label %95, label %173

95:                                               ; preds = %90
  %96 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %97 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  switch i32 %98, label %114 [
    i32 130, label %99
    i32 129, label %104
    i32 128, label %109
  ]

99:                                               ; preds = %95
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_13__*
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %102, align 8
  store %union.acpi_operand_object* %103, %union.acpi_operand_object** %6, align 8
  br label %115

104:                                              ; preds = %95
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_14__*
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %107, align 8
  store %union.acpi_operand_object* %108, %union.acpi_operand_object** %6, align 8
  br label %115

109:                                              ; preds = %95
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_15__*
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %112, align 8
  store %union.acpi_operand_object* %113, %union.acpi_operand_object** %6, align 8
  br label %115

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %109, %104, %99
  br label %116

116:                                              ; preds = %167, %115
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %118 = icmp ne %union.acpi_operand_object* %117, null
  br i1 %118, label %119, label %172

119:                                              ; preds = %116
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_16__*
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %119
  %127 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %131 = ptrtoint %union.acpi_operand_object* %130 to i32
  %132 = call i32 @ACPI_DEBUG_PRINT(i32 %131)
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %133, %union.acpi_operand_object* %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %126
  %140 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %141 = call i32 @acpi_ut_release_mutex(i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i64 @ACPI_FAILURE(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  br label %148

148:                                              ; preds = %145, %139
  br label %149

149:                                              ; preds = %148, %126
  %150 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %151 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %150, i32 1)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %156 = call i32 @acpi_ut_acquire_mutex(i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i64 @ACPI_FAILURE(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @return_ACPI_STATUS(i32 %161)
  br label %163

163:                                              ; preds = %160, %154
  br label %164

164:                                              ; preds = %163, %149
  %165 = load i32, i32* @AE_OK, align 4
  %166 = call i32 @return_ACPI_STATUS(i32 %165)
  br label %167

167:                                              ; preds = %164, %119
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %169 = bitcast %union.acpi_operand_object* %168 to %struct.TYPE_16__*
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %170, align 8
  store %union.acpi_operand_object* %171, %union.acpi_operand_object** %6, align 8
  br label %116

172:                                              ; preds = %116
  br label %173

173:                                              ; preds = %172, %90
  %174 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %175 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %174, i32 0, i32 1
  %176 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %175, align 8
  store %struct.acpi_namespace_node* %176, %struct.acpi_namespace_node** %9, align 8
  br label %87

177:                                              ; preds = %87
  %178 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @acpi_ut_get_region_name(i64 %179)
  %181 = load i64, i64* %8, align 8
  %182 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %183 = ptrtoint %union.acpi_operand_object* %182 to i32
  %184 = call i32 @ACPI_DEBUG_PRINT(i32 %183)
  %185 = load i32, i32* @AE_NOT_EXIST, align 4
  %186 = call i32 @return_ACPI_STATUS(i32 %185)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_search_one_scope(i32, %struct.acpi_namespace_node*, i32, %struct.acpi_namespace_node**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
