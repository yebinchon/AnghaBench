; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_delete_internal_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_delete_internal_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, %union.acpi_operand_object*, %union.acpi_operand_object* }
%union.acpi_operand_object.0 = type opaque
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %union.acpi_operand_object* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { %union.acpi_operand_object* }
%struct.TYPE_13__ = type { %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ut_delete_internal_obj = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"**** String %p, ptr %p\0A\00", align 1
@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"**** Buffer %p, ptr %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c" **** Package of count %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"***** Mutex %p, OS Mutex %p\0A\00", align 1
@acpi_gbl_global_lock_mutex = common dso_local global %union.acpi_operand_object* null, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"***** Event %p, OS Semaphore %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"***** Method %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"***** Region %p\0A\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"***** Buffer Field %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"***** Bank Field %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Deleting Object Subptr %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Deleting Object %p [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*)* @acpi_ut_delete_internal_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_delete_internal_obj(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load i32, i32* @ut_delete_internal_obj, align 4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %8, %union.acpi_operand_object* %9)
  %11 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %12 = icmp ne %union.acpi_operand_object* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @return_VOID, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_17__*
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %300 [
    i32 129, label %20
    i32 139, label %42
    i32 132, label %64
    i32 137, label %75
    i32 131, label %88
    i32 128, label %88
    i32 133, label %105
    i32 136, label %133
    i32 134, label %150
    i32 130, label %178
    i32 138, label %274
    i32 135, label %287
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_16__*
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = call i32 @ACPI_DEBUG_PRINT(i32 %27)
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_17__*
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %20
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_16__*
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %36, %20
  br label %301

42:                                               ; preds = %15
  %43 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_18__*
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = call i32 @ACPI_DEBUG_PRINT(i32 %49)
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_17__*
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %42
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_18__*
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %58, %42
  br label %301

64:                                               ; preds = %15
  %65 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_19__*
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ACPI_DEBUG_PRINT(i32 %69)
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_19__*
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %3, align 8
  br label %301

75:                                               ; preds = %15
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_20__*
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_20__*
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @acpi_ev_delete_gpe_block(i32 %85)
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %15, %15, %87
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_21__*
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %91, align 8
  store %union.acpi_operand_object* %92, %union.acpi_operand_object** %4, align 8
  br label %93

93:                                               ; preds = %96, %88
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %95 = icmp ne %union.acpi_operand_object* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_14__*
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 4
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %99, align 8
  store %union.acpi_operand_object* %100, %union.acpi_operand_object** %6, align 8
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %102 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %101)
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %103, %union.acpi_operand_object** %4, align 8
  br label %93

104:                                              ; preds = %93
  br label %301

105:                                              ; preds = %15
  %106 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_23__*
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ACPI_DEBUG_PRINT(i32 %111)
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  %115 = icmp eq %union.acpi_operand_object* %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load i32*, i32** @acpi_gbl_global_lock_semaphore, align 8
  %118 = call i32 @acpi_os_delete_semaphore(i32* %117)
  store i32* null, i32** @acpi_gbl_global_lock_semaphore, align 8
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_23__*
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @acpi_os_delete_mutex(i32 %122)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** @acpi_gbl_global_lock_mutex, align 8
  br label %132

124:                                              ; preds = %105
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %126 = call i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object* %125)
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %128 = bitcast %union.acpi_operand_object* %127 to %struct.TYPE_23__*
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @acpi_os_delete_mutex(i32 %130)
  br label %132

132:                                              ; preds = %124, %116
  br label %301

133:                                              ; preds = %15
  %134 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.TYPE_22__*
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = ptrtoint i32* %139 to i32
  %141 = call i32 @ACPI_DEBUG_PRINT(i32 %140)
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_22__*
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @acpi_os_delete_semaphore(i32* %145)
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_22__*
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  br label %301

150:                                              ; preds = %15
  %151 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %153 = ptrtoint %union.acpi_operand_object* %152 to i32
  %154 = call i32 @ACPI_DEBUG_PRINT(i32 %153)
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %156 = bitcast %union.acpi_operand_object* %155 to %struct.TYPE_24__*
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %157, align 8
  %159 = icmp ne %union.acpi_operand_object* %158, null
  br i1 %159, label %160, label %177

160:                                              ; preds = %150
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %162 = bitcast %union.acpi_operand_object* %161 to %struct.TYPE_24__*
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load %union.acpi_operand_object*, %union.acpi_operand_object** %163, align 8
  %165 = bitcast %union.acpi_operand_object* %164 to %struct.TYPE_23__*
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @acpi_os_delete_mutex(i32 %167)
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %170 = bitcast %union.acpi_operand_object* %169 to %struct.TYPE_24__*
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %171, align 8
  %173 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %172)
  %174 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %175 = bitcast %union.acpi_operand_object* %174 to %struct.TYPE_24__*
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %176, align 8
  br label %177

177:                                              ; preds = %160, %150
  br label %301

178:                                              ; preds = %15
  %179 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %180 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %181 = ptrtoint %union.acpi_operand_object* %180 to i32
  %182 = call i32 @ACPI_DEBUG_PRINT(i32 %181)
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %184 = bitcast %union.acpi_operand_object* %183 to %struct.TYPE_13__*
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %188 = bitcast %union.acpi_operand_object* %187 to %struct.TYPE_13__*
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %192 = bitcast %union.acpi_operand_object* %191 to %struct.TYPE_13__*
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @acpi_os_invalidate_address(i32 %186, i32 %190, i32 %194)
  %196 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %197 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %196)
  store %union.acpi_operand_object* %197, %union.acpi_operand_object** %5, align 8
  %198 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %199 = icmp ne %union.acpi_operand_object* %198, null
  br i1 %199, label %200, label %273

200:                                              ; preds = %178
  %201 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %202 = bitcast %union.acpi_operand_object* %201 to %struct.TYPE_13__*
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load %union.acpi_operand_object*, %union.acpi_operand_object** %203, align 8
  store %union.acpi_operand_object* %204, %union.acpi_operand_object** %4, align 8
  %205 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %206 = icmp ne %union.acpi_operand_object* %205, null
  br i1 %206, label %207, label %270

207:                                              ; preds = %200
  %208 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %209 = bitcast %union.acpi_operand_object* %208 to %struct.TYPE_14__*
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 3
  %211 = load %union.acpi_operand_object*, %union.acpi_operand_object** %210, align 8
  store %union.acpi_operand_object* %211, %union.acpi_operand_object** %6, align 8
  %212 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %213 = bitcast %union.acpi_operand_object* %212 to %struct.TYPE_14__*
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  store %union.acpi_operand_object** %214, %union.acpi_operand_object*** %7, align 8
  br label %215

215:                                              ; preds = %228, %207
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %217 = icmp ne %union.acpi_operand_object* %216, null
  br i1 %217, label %218, label %236

218:                                              ; preds = %215
  %219 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %220 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %221 = icmp eq %union.acpi_operand_object* %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %224 = bitcast %union.acpi_operand_object* %223 to %struct.TYPE_13__*
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %225, align 8
  %227 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %226, %union.acpi_operand_object** %227, align 8
  br label %236

228:                                              ; preds = %218
  %229 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %230 = bitcast %union.acpi_operand_object* %229 to %struct.TYPE_13__*
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  store %union.acpi_operand_object** %231, %union.acpi_operand_object*** %7, align 8
  %232 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %233 = bitcast %union.acpi_operand_object* %232 to %struct.TYPE_13__*
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load %union.acpi_operand_object*, %union.acpi_operand_object** %234, align 8
  store %union.acpi_operand_object* %235, %union.acpi_operand_object** %6, align 8
  br label %215

236:                                              ; preds = %222, %215
  %237 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %238 = bitcast %union.acpi_operand_object* %237 to %struct.TYPE_14__*
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %236
  %245 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %246 = bitcast %union.acpi_operand_object* %245 to %struct.TYPE_14__*
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = load i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)** %247, align 8
  %249 = icmp ne i32 (%union.acpi_operand_object.0*, i32, i32, i32*)* %248, null
  br i1 %249, label %250, label %266

250:                                              ; preds = %244
  %251 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %252 = bitcast %union.acpi_operand_object* %251 to %struct.TYPE_14__*
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load i32 (%union.acpi_operand_object.0*, i32, i32, i32*)*, i32 (%union.acpi_operand_object.0*, i32, i32, i32*)** %253, align 8
  %255 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %256 = bitcast %union.acpi_operand_object* %255 to %union.acpi_operand_object.0*
  %257 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %258 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %259 = bitcast %union.acpi_operand_object* %258 to %struct.TYPE_14__*
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %263 = bitcast %union.acpi_operand_object* %262 to %struct.TYPE_15__*
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = call i32 %254(%union.acpi_operand_object.0* %256, i32 %257, i32 %261, i32* %264)
  br label %266

266:                                              ; preds = %250, %244
  br label %267

267:                                              ; preds = %266, %236
  %268 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %269 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %268)
  br label %270

270:                                              ; preds = %267, %200
  %271 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %272 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %271)
  br label %273

273:                                              ; preds = %270, %178
  br label %301

274:                                              ; preds = %15
  %275 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %276 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %277 = ptrtoint %union.acpi_operand_object* %276 to i32
  %278 = call i32 @ACPI_DEBUG_PRINT(i32 %277)
  %279 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %280 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %279)
  store %union.acpi_operand_object* %280, %union.acpi_operand_object** %5, align 8
  %281 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %282 = icmp ne %union.acpi_operand_object* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %274
  %284 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %285 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %284)
  br label %286

286:                                              ; preds = %283, %274
  br label %301

287:                                              ; preds = %15
  %288 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %289 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %290 = ptrtoint %union.acpi_operand_object* %289 to i32
  %291 = call i32 @ACPI_DEBUG_PRINT(i32 %290)
  %292 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %293 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %292)
  store %union.acpi_operand_object* %293, %union.acpi_operand_object** %5, align 8
  %294 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %295 = icmp ne %union.acpi_operand_object* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %287
  %297 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %298 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %297)
  br label %299

299:                                              ; preds = %296, %287
  br label %301

300:                                              ; preds = %15
  br label %301

301:                                              ; preds = %300, %299, %286, %273, %177, %133, %132, %104, %64, %63, %41
  %302 = load i8*, i8** %3, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %306 = load i8*, i8** %3, align 8
  %307 = ptrtoint i8* %306 to i32
  %308 = call i32 @ACPI_DEBUG_PRINT(i32 %307)
  %309 = load i8*, i8** %3, align 8
  %310 = call i32 @ACPI_FREE(i8* %309)
  br label %311

311:                                              ; preds = %304, %301
  %312 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %313 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %314 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %315 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %314)
  %316 = call i32 @ACPI_DEBUG_PRINT(i32 %315)
  %317 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %318 = call i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object* %317)
  %319 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_delete_gpe_block(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_delete_semaphore(i32*) #1

declare dso_local i32 @acpi_os_delete_mutex(i32) #1

declare dso_local i32 @acpi_ex_unlink_mutex(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_delete_object_desc(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_invalidate_address(i32, i32, i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
