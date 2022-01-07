; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_build_named_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_build_named_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i32*, i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %union.acpi_parse_object* }
%struct.TYPE_6__ = type { i64, i32* }

@AE_OK = common dso_local global i64 0, align 8
@ps_build_named_op = common dso_local global i32 0, align 4
@ARGP_NAME = common dso_local global i64 0, align 8
@AE_AML_NO_OPERAND = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"During name lookup/catalog\00", align 1
@AE_CTRL_PARSE_CONTINUE = common dso_local global i64 0, align 8
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_CTRL_PARSE_PENDING = common dso_local global i64 0, align 8
@acpi_gbl_depth = common dso_local global i32 0, align 4
@AML_REGION_OP = common dso_local global i64 0, align 8
@AML_DATA_REGION_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_walk_state*, i32*, %union.acpi_parse_object*, %union.acpi_parse_object**)* @acpi_ps_build_named_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_ps_build_named_op(%struct.acpi_walk_state* %0, i32* %1, %union.acpi_parse_object* %2, %union.acpi_parse_object** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.acpi_parse_object*, align 8
  %9 = alloca %union.acpi_parse_object**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %6, align 8
  store i32* %1, i32** %7, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %8, align 8
  store %union.acpi_parse_object** %3, %union.acpi_parse_object*** %9, align 8
  %12 = load i64, i64* @AE_OK, align 8
  store i64 %12, i64* %10, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %11, align 8
  %13 = load i32, i32* @ps_build_named_op, align 4
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %struct.acpi_walk_state* %14)
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %17 = bitcast %union.acpi_parse_object* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %19, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %27 = bitcast %union.acpi_parse_object* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  br label %29

29:                                               ; preds = %59, %4
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @GET_CURRENT_ARG_TYPE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @GET_CURRENT_ARG_TYPE(i32 %38)
  %40 = load i64, i64* @ARGP_NAME, align 8
  %41 = icmp ne i64 %39, %40
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i1 [ false, %29 ], [ %41, %35 ]
  br i1 %43, label %44, label %67

44:                                               ; preds = %42
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %47 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 4
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @GET_CURRENT_ARG_TYPE(i32 %50)
  %52 = call i64 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %45, i32* %47, i64 %51, %union.acpi_parse_object** %11)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @ACPI_FAILURE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @return_ACPI_STATUS(i64 %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %61 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %62 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %60, %union.acpi_parse_object* %61)
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @INCREMENT_ARG_LIST(i32 %65)
  br label %29

67:                                               ; preds = %42
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @GET_CURRENT_ARG_TYPE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i64, i64* @AE_AML_NO_OPERAND, align 8
  %75 = call i32 @return_ACPI_STATUS(i64 %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @INCREMENT_ARG_LIST(i32 %79)
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %84 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %83, i32 0, i32 1
  %85 = load i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %84, align 8
  %86 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %87 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %88 = call i64 %85(%struct.acpi_walk_state* %86, %union.acpi_parse_object** %87)
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @ACPI_FAILURE(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %76
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([27 x i8]* @.str to i32))
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @return_ACPI_STATUS(i64 %96)
  br label %98

98:                                               ; preds = %92, %76
  %99 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %99, align 8
  %101 = icmp ne %union.acpi_parse_object* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %104 = call i32 @return_ACPI_STATUS(i64 %103)
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %107 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %107, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %106, %union.acpi_parse_object* %108, i64 %109)
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i64 @ACPI_FAILURE(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %105
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @AE_CTRL_PENDING, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i64, i64* @AE_CTRL_PARSE_PENDING, align 8
  %120 = call i32 @return_ACPI_STATUS(i64 %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @return_ACPI_STATUS(i64 %122)
  br label %124

124:                                              ; preds = %121, %105
  %125 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %126 = load %union.acpi_parse_object*, %union.acpi_parse_object** %125, align 8
  %127 = load %union.acpi_parse_object*, %union.acpi_parse_object** %8, align 8
  %128 = bitcast %union.acpi_parse_object* %127 to %struct.TYPE_5__*
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %union.acpi_parse_object*, %union.acpi_parse_object** %130, align 8
  %132 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %126, %union.acpi_parse_object* %131)
  %133 = load i32, i32* @acpi_gbl_depth, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @acpi_gbl_depth, align 4
  %135 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %136 = load %union.acpi_parse_object*, %union.acpi_parse_object** %135, align 8
  %137 = bitcast %union.acpi_parse_object* %136 to %struct.TYPE_5__*
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AML_REGION_OP, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %124
  %143 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %144 = load %union.acpi_parse_object*, %union.acpi_parse_object** %143, align 8
  %145 = bitcast %union.acpi_parse_object* %144 to %struct.TYPE_5__*
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AML_DATA_REGION_OP, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %142, %124
  %151 = load i32*, i32** %7, align 8
  %152 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %153 = load %union.acpi_parse_object*, %union.acpi_parse_object** %152, align 8
  %154 = bitcast %union.acpi_parse_object* %153 to %struct.TYPE_6__*
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32* %151, i32** %155, align 8
  %156 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  %157 = load %union.acpi_parse_object*, %union.acpi_parse_object** %156, align 8
  %158 = bitcast %union.acpi_parse_object* %157 to %struct.TYPE_6__*
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %150, %142
  %161 = load i64, i64* @AE_OK, align 8
  %162 = call i32 @return_ACPI_STATUS(i64 %161)
  %163 = load i64, i64* %5, align 8
  ret i64 %163
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i64 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, i32*, i64, %union.acpi_parse_object**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
