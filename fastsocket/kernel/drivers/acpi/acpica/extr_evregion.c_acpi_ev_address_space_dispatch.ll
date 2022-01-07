; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_address_space_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_address_space_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64, %union.acpi_operand_object*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 (i64, i64, i64, i32*, i32, i8*)*, i32 (%union.acpi_operand_object.0*, i32, i32, i8**)* }
%union.acpi_operand_object.0 = type opaque
%struct.TYPE_4__ = type { i8* }

@ev_address_space_dispatch = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No handler for Region [%4.4s] (%p) [%s]\00", align 1
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No init routine for region(%p) [%s]\00", align 1
@ACPI_REGION_ACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"During region initialization: [%s]\00", align 1
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Handler %p (@%p) Address %8.8X%8.8X [%s]\0A\00", align 1
@ACPI_ADDR_HANDLER_DEFAULT_INSTALLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Returned by Handler for [%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_address_space_dispatch(%union.acpi_operand_object* %0, i64 %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i64, i64, i64, i32*, i32, i8*)*, align 8
  %14 = alloca i32 (%union.acpi_operand_object*, i32, i32, i8**)*, align 8
  %15 = alloca %union.acpi_operand_object*, align 8
  %16 = alloca %union.acpi_operand_object*, align 8
  %17 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32, i32* @ev_address_space_dispatch, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %21 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %20)
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %16, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %23 = icmp ne %union.acpi_operand_object* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @AE_NOT_EXIST, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %5
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %30, align 8
  store %union.acpi_operand_object* %31, %union.acpi_operand_object** %15, align 8
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %33 = icmp ne %union.acpi_operand_object* %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @AE_INFO, align 4
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @acpi_ut_get_node_name(i32 %39)
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @acpi_ut_get_region_name(i32 %45)
  %47 = call i32 @ACPI_ERROR(i32 %46)
  %48 = load i32, i32* @AE_NOT_EXIST, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %34, %27
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %132, label %58

58:                                               ; preds = %50
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_6__*
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32 (%union.acpi_operand_object.0*, i32, i32, i8**)*, i32 (%union.acpi_operand_object.0*, i32, i32, i8**)** %61, align 8
  %63 = bitcast i32 (%union.acpi_operand_object.0*, i32, i32, i8**)* %62 to i32 (%union.acpi_operand_object*, i32, i32, i8**)*
  store i32 (%union.acpi_operand_object*, i32, i32, i8**)* %63, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %14, align 8
  %64 = load i32 (%union.acpi_operand_object*, i32, i32, i8**)*, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %14, align 8
  %65 = icmp ne i32 (%union.acpi_operand_object*, i32, i32, i8**)* %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @AE_INFO, align 4
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_5__*
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @acpi_ut_get_region_name(i32 %72)
  %74 = call i32 @ACPI_ERROR(i32 %73)
  %75 = load i32, i32* @AE_NOT_EXIST, align 4
  %76 = call i32 @return_ACPI_STATUS(i32 %75)
  br label %77

77:                                               ; preds = %66, %58
  %78 = call i32 (...) @acpi_ex_exit_interpreter()
  %79 = load i32 (%union.acpi_operand_object*, i32, i32, i8**)*, i32 (%union.acpi_operand_object*, i32, i32, i8**)** %14, align 8
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %81 = load i32, i32* @ACPI_REGION_ACTIVATE, align 4
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_6__*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %79(%union.acpi_operand_object* %80, i32 %81, i32 %85, i8** %17)
  store i32 %86, i32* %12, align 4
  %87 = call i32 (...) @acpi_ex_enter_interpreter()
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @ACPI_FAILURE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %77
  %92 = load i32, i32* @AE_INFO, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @acpi_ut_get_region_name(i32 %97)
  %99 = call i32 @ACPI_EXCEPTION(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @return_ACPI_STATUS(i32 %100)
  br label %102

102:                                              ; preds = %91, %77
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %104 = bitcast %union.acpi_operand_object* %103 to %struct.TYPE_5__*
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_5__*
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 8
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @ACPI_FREE(i8* %123)
  br label %130

125:                                              ; preds = %110
  %126 = load i8*, i8** %17, align 8
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %128 = bitcast %union.acpi_operand_object* %127 to %struct.TYPE_4__*
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %130

130:                                              ; preds = %125, %122
  br label %131

131:                                              ; preds = %130, %102
  br label %132

132:                                              ; preds = %131, %50
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %134 = bitcast %union.acpi_operand_object* %133 to %struct.TYPE_6__*
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32 (i64, i64, i64, i32*, i32, i8*)*, i32 (i64, i64, i64, i32*, i32, i8*)** %135, align 8
  store i32 (i64, i64, i64, i32*, i32, i8*)* %136, i32 (i64, i64, i64, i32*, i32, i8*)** %13, align 8
  %137 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_5__*
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %140, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_6__*
  %143 = load i32 (i64, i64, i64, i32*, i32, i8*)*, i32 (i64, i64, i64, i32*, i32, i8*)** %13, align 8
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %145 = bitcast %union.acpi_operand_object* %144 to %struct.TYPE_5__*
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @ACPI_FORMAT_NATIVE_UINT(i64 %149)
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %152 = bitcast %union.acpi_operand_object* %151 to %struct.TYPE_5__*
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @acpi_ut_get_region_name(i32 %154)
  %156 = call i32 @ACPI_DEBUG_PRINT(i32 %155)
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %158 = bitcast %union.acpi_operand_object* %157 to %struct.TYPE_6__*
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %132
  %165 = call i32 (...) @acpi_ex_exit_interpreter()
  br label %166

166:                                              ; preds = %164, %132
  %167 = load i32 (i64, i64, i64, i32*, i32, i8*)*, i32 (i64, i64, i64, i32*, i32, i8*)** %13, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %170 = bitcast %union.acpi_operand_object* %169 to %struct.TYPE_5__*
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %9, align 8
  %174 = add nsw i64 %172, %173
  %175 = load i64, i64* %10, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %178 = bitcast %union.acpi_operand_object* %177 to %struct.TYPE_6__*
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %16, align 8
  %182 = bitcast %union.acpi_operand_object* %181 to %struct.TYPE_4__*
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 %167(i64 %168, i64 %174, i64 %175, i32* %176, i32 %180, i8* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i64 @ACPI_FAILURE(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %166
  %190 = load i32, i32* @AE_INFO, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %193 = bitcast %union.acpi_operand_object* %192 to %struct.TYPE_5__*
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @acpi_ut_get_region_name(i32 %195)
  %197 = call i32 @ACPI_EXCEPTION(i32 %196)
  br label %198

198:                                              ; preds = %189, %166
  %199 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  %200 = bitcast %union.acpi_operand_object* %199 to %struct.TYPE_6__*
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ACPI_ADDR_HANDLER_DEFAULT_INSTALLED, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %198
  %207 = call i32 (...) @acpi_ex_enter_interpreter()
  br label %208

208:                                              ; preds = %206, %198
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @return_ACPI_STATUS(i32 %209)
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_NATIVE_UINT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
