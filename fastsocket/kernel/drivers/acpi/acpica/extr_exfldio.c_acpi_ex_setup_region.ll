; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_setup_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_setup_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, %union.acpi_operand_object* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_setup_region = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Needed Region, found type %X (%s)\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AOPOBJ_INVALID = common dso_local global i32 0, align 4
@AE_AML_ILLEGAL_ADDRESS = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@acpi_gbl_enable_interpreter_slack = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [79 x i8] c"Field [%4.4s] access width (%d bytes) too large for region [%4.4s] (length %X)\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Field [%4.4s] Base+Offset+Width %X+%X+%X is beyond end of region [%4.4s] (length %X)\00", align 1
@AE_AML_REGION_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, i64)* @acpi_ex_setup_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_setup_region(%union.acpi_operand_object* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @ex_setup_region, align 4
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %9, i64 %10)
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_5__*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %7, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @AE_INFO, align 4
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %29 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %28)
  %30 = call i32 @ACPI_ERROR(i32 %29)
  %31 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %22, %2
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %43 = call i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AOPOBJ_INVALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @AE_AML_ILLEGAL_ADDRESS, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  br label %62

62:                                               ; preds = %59, %51
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69, %62
  %77 = load i32, i32* @AE_OK, align 4
  %78 = call i32 @return_ACPI_STATUS(i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %81 = bitcast %union.acpi_operand_object* %80 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_5__*
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_5__*
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %89, %93
  %95 = icmp slt i64 %83, %94
  br i1 %95, label %96, label %186

96:                                               ; preds = %79
  %97 = load i64, i64* @acpi_gbl_enable_interpreter_slack, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_6__*
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_5__*
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @ACPI_ROUND_UP(i64 %103, i64 %107)
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %110 = bitcast %union.acpi_operand_object* %109 to %struct.TYPE_5__*
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %114 = bitcast %union.acpi_operand_object* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %112, %116
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %117, %118
  %120 = icmp sge i64 %108, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %99
  %122 = load i32, i32* @AE_OK, align 4
  %123 = call i32 @return_ACPI_STATUS(i32 %122)
  br label %124

124:                                              ; preds = %121, %99
  br label %125

125:                                              ; preds = %124, %96
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %127 = bitcast %union.acpi_operand_object* %126 to %struct.TYPE_6__*
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_5__*
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %125
  %136 = load i32, i32* @AE_INFO, align 4
  %137 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %138 = bitcast %union.acpi_operand_object* %137 to %struct.TYPE_5__*
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @acpi_ut_get_node_name(i32 %140)
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_5__*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %147 = bitcast %union.acpi_operand_object* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @acpi_ut_get_node_name(i32 %149)
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %152 = bitcast %union.acpi_operand_object* %151 to %struct.TYPE_6__*
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @ACPI_ERROR(i32 %155)
  br label %157

157:                                              ; preds = %135, %125
  %158 = load i32, i32* @AE_INFO, align 4
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_5__*
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @acpi_ut_get_node_name(i32 %162)
  %164 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %165 = bitcast %union.acpi_operand_object* %164 to %struct.TYPE_5__*
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %170 = bitcast %union.acpi_operand_object* %169 to %struct.TYPE_5__*
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %174 = bitcast %union.acpi_operand_object* %173 to %struct.TYPE_6__*
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @acpi_ut_get_node_name(i32 %176)
  %178 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %179 = bitcast %union.acpi_operand_object* %178 to %struct.TYPE_6__*
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @ACPI_ERROR(i32 %182)
  %184 = load i32, i32* @AE_AML_REGION_LIMIT, align 4
  %185 = call i32 @return_ACPI_STATUS(i32 %184)
  br label %186

186:                                              ; preds = %157, %79
  %187 = load i32, i32* @AE_OK, align 4
  %188 = call i32 @return_ACPI_STATUS(i32 %187)
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @ACPI_ROUND_UP(i64, i64) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
