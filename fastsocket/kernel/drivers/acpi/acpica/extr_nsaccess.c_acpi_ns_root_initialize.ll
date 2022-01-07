; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsaccess.c_acpi_ns_root_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsaccess.c_acpi_ns_root_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_names = type { i32, i64, i32* }
%union.acpi_operand_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i8* }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@ns_root_initialize = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_root_node_struct = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Entering predefined entries into namespace\0A\00", align 1
@acpi_gbl_pre_defined_names = common dso_local global %struct.acpi_predefined_names* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_OSI\00", align 1
@acpi_gbl_create_osi_method = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS2 = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not create predefined name %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not override predefined %s\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AML_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@acpi_ut_osi_implementation = common dso_local global i32 0, align 4
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_GL_\00", align 1
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Unsupported initial type value %X\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\\_GPE\00", align 1
@acpi_gbl_fadt_gpe_device = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_root_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_predefined_names*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32*, align 8
  store %struct.acpi_predefined_names* null, %struct.acpi_predefined_names** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32, i32* @ns_root_initialize, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %10 = call i32 @acpi_ut_acquire_mutex(i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i32*, i32** @acpi_gbl_root_node, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @AE_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %210

22:                                               ; preds = %17
  store i32* @acpi_gbl_root_node_struct, i32** @acpi_gbl_root_node, align 8
  %23 = load i32, i32* @ACPI_DB_INFO, align 4
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([44 x i8]* @.str to i32))
  %25 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** @acpi_gbl_pre_defined_names, align 8
  store %struct.acpi_predefined_names* %25, %struct.acpi_predefined_names** %3, align 8
  br label %26

26:                                               ; preds = %206, %22
  %27 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %209

31:                                               ; preds = %26
  %32 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ACPI_STRCMP(i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @acpi_gbl_create_osi_method, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %206

41:                                               ; preds = %37, %31
  %42 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %49 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %50 = call i32 @acpi_ns_lookup(i32* null, i64 %44, i32 %47, i32 %48, i32 %49, i32* null, %struct.acpi_namespace_node** %4)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %56 = icmp ne %struct.acpi_namespace_node* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54, %41
  %58 = load i32, i32* @AE_INFO, align 4
  %59 = load i32, i32* %2, align 4
  %60 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ACPI_EXCEPTION(i32 %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %67 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %205

70:                                               ; preds = %65
  %71 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %72 = call i32 @acpi_os_predefined_override(%struct.acpi_predefined_names* %71, i32** %6)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @ACPI_FAILURE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @AE_INFO, align 4
  %78 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %79 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @ACPI_ERROR(i32 %81)
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %92 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %93)
  store %union.acpi_operand_object* %94, %union.acpi_operand_object** %5, align 8
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %96 = icmp ne %union.acpi_operand_object* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %98, i32* %2, align 4
  br label %210

99:                                               ; preds = %90
  %100 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %101 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %187 [
    i32 130, label %103
    i32 131, label %125
    i32 128, label %131
    i32 129, label %147
  ]

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @ACPI_TO_INTEGER(i32* %104)
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i8* %107, i8** %110, align 8
  %111 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_10__*
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @AML_METHOD_INTERNAL_ONLY, align 4
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %119 = bitcast %union.acpi_operand_object* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @acpi_ut_osi_implementation, align 4
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  br label %195

125:                                              ; preds = %99
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @ACPI_TO_INTEGER(i32* %126)
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %129 = bitcast %union.acpi_operand_object* %128 to %struct.TYPE_7__*
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  br label %195

131:                                              ; preds = %99
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @ACPI_STRLEN(i32* %132)
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_8__*
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_8__*
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32* %137, i32** %140, align 8
  %141 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_10__*
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %141
  store i32 %146, i32* %144, align 4
  br label %195

147:                                              ; preds = %99
  %148 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %150 = bitcast %union.acpi_operand_object* %149 to %struct.TYPE_9__*
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store %struct.acpi_namespace_node* %148, %struct.acpi_namespace_node** %151, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @ACPI_TO_INTEGER(i32* %152)
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %158 = bitcast %union.acpi_operand_object* %157 to %struct.TYPE_9__*
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %161 = bitcast %union.acpi_operand_object* %160 to %struct.TYPE_9__*
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = call i32 @acpi_os_create_mutex(i32* %162)
  store i32 %163, i32* %2, align 4
  %164 = load i32, i32* %2, align 4
  %165 = call i64 @ACPI_FAILURE(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %147
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %169 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %168)
  br label %210

170:                                              ; preds = %147
  %171 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %172 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @ACPI_STRCMP(i64 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %170
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %177, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %178 = call i32 @acpi_os_create_semaphore(i32 1, i32 0, i32* @acpi_gbl_global_lock_semaphore)
  store i32 %178, i32* %2, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i64 @ACPI_FAILURE(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %184 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %183)
  br label %210

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %170
  br label %195

187:                                              ; preds = %99
  %188 = load i32, i32* @AE_INFO, align 4
  %189 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %190 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ACPI_ERROR(i32 %191)
  %193 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %194 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %193)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  br label %206

195:                                              ; preds = %186, %131, %125, %103
  %196 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %197 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %198 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %199 = bitcast %union.acpi_operand_object* %198 to %struct.TYPE_10__*
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @acpi_ns_attach_object(%struct.acpi_namespace_node* %196, %union.acpi_operand_object* %197, i32 %201)
  store i32 %202, i32* %2, align 4
  %203 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %204 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %203)
  br label %205

205:                                              ; preds = %195, %65
  br label %206

206:                                              ; preds = %205, %187, %40
  %207 = load %struct.acpi_predefined_names*, %struct.acpi_predefined_names** %3, align 8
  %208 = getelementptr inbounds %struct.acpi_predefined_names, %struct.acpi_predefined_names* %207, i32 1
  store %struct.acpi_predefined_names* %208, %struct.acpi_predefined_names** %3, align 8
  br label %26

209:                                              ; preds = %26
  br label %210

210:                                              ; preds = %209, %182, %167, %97, %20
  %211 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %212 = call i32 @acpi_ut_release_mutex(i32 %211)
  %213 = load i32, i32* %2, align 4
  %214 = call i64 @ACPI_SUCCESS(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %218 = call i32 @acpi_ns_get_node(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32* @acpi_gbl_fadt_gpe_device)
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %216, %210
  %220 = load i32, i32* %2, align 4
  %221 = call i32 @return_ACPI_STATUS(i32 %220)
  %222 = load i32, i32* %1, align 4
  ret i32 %222
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_STRCMP(i64, i8*) #1

declare dso_local i32 @acpi_ns_lookup(i32*, i64, i32, i32, i32, i32*, %struct.acpi_namespace_node**) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_os_predefined_override(%struct.acpi_predefined_names*, i32**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_TO_INTEGER(i32*) #1

declare dso_local i32 @ACPI_STRLEN(i32*) #1

declare dso_local i32 @acpi_os_create_mutex(i32*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i32*) #1

declare dso_local i32 @acpi_ns_attach_object(%struct.acpi_namespace_node*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ns_get_node(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
