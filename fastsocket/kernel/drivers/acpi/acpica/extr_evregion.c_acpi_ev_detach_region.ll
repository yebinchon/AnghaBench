; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_detach_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_detach_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %union.acpi_operand_object*, %union.acpi_operand_object*, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32 (%union.acpi_operand_object*, i32, i32, i8**)*, %union.acpi_operand_object* }

@ev_detach_region = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Removing Region %p from address handler %p\0A\00", align 1
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"from region _REG, [%s]\00", align 1
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"from region handler - deactivate, [%s]\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Cannot remove region %p from address handler %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ev_detach_region(%union.acpi_operand_object* %0, i64 %1) #0 {
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32 (%union.acpi_operand_object*, i32, i32, i8**)*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @ev_detach_region, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %15 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %14)
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %10, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @return_VOID, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8** %23, i8*** %9, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %26, align 8
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %5, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %29 = icmp ne %union.acpi_operand_object* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @return_VOID, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %35, align 8
  store %union.acpi_operand_object* %36, %union.acpi_operand_object** %6, align 8
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store %union.acpi_operand_object** %39, %union.acpi_operand_object*** %7, align 8
  br label %40

40:                                               ; preds = %148, %32
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %42 = icmp ne %union.acpi_operand_object* %41, null
  br i1 %42, label %43, label %156

43:                                               ; preds = %40
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %46 = icmp eq %union.acpi_operand_object* %44, %45
  br i1 %46, label %47, label %148

47:                                               ; preds = %43
  %48 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %51 = ptrtoint %union.acpi_operand_object* %50 to i32
  %52 = call i32 @ACPI_DEBUG_PRINT(i32 %51)
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %55, align 8
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %56, %union.acpi_operand_object** %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %60, align 8
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %47
  %64 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %65 = call i32 @acpi_ut_release_mutex(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @ACPI_FAILURE(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @return_VOID, align 4
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %47
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %74 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %73, i32 0)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @ACPI_FAILURE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i32, i32* @AE_INFO, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @acpi_ut_get_region_name(i32 %84)
  %86 = call i32 @ACPI_EXCEPTION(i32 %85)
  br label %87

87:                                               ; preds = %78, %72
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %92 = call i32 @acpi_ut_acquire_mutex(i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @return_VOID, align 4
  br label %98

98:                                               ; preds = %96, %90
  br label %99

99:                                               ; preds = %98, %87
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_6__*
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %99
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_5__*
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32 (%union.acpi_operand_object*, i32, i32, i8**)*, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %110, align 8
  store i32 (%union.acpi_operand_object*, i32, i32, i8**)* %111, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %8, align 8
  %112 = load i32 (%union.acpi_operand_object*, i32, i32, i8**)*, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %8, align 8
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %114 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_5__*
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i8**, i8*** %9, align 8
  %120 = call i32 %112(%union.acpi_operand_object* %113, i32 %114, i32 %118, i8** %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i64 @ACPI_FAILURE(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %107
  %125 = load i32, i32* @AE_INFO, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %128 = bitcast %union.acpi_operand_object* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @acpi_ut_get_region_name(i32 %130)
  %132 = call i32 @ACPI_EXCEPTION(i32 %131)
  br label %133

133:                                              ; preds = %124, %107
  %134 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %135 = xor i32 %134, -1
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %135
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %133, %99
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_6__*
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %144, align 8
  %145 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %146 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %145)
  %147 = load i32, i32* @return_VOID, align 4
  br label %148

148:                                              ; preds = %141, %43
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %150 = bitcast %union.acpi_operand_object* %149 to %struct.TYPE_6__*
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  store %union.acpi_operand_object** %151, %union.acpi_operand_object*** %7, align 8
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %153 = bitcast %union.acpi_operand_object* %152 to %struct.TYPE_6__*
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %154, align 8
  store %union.acpi_operand_object* %155, %union.acpi_operand_object** %6, align 8
  br label %40

156:                                              ; preds = %40
  %157 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %160 = ptrtoint %union.acpi_operand_object* %159 to i32
  %161 = call i32 @ACPI_DEBUG_PRINT(i32 %160)
  %162 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
