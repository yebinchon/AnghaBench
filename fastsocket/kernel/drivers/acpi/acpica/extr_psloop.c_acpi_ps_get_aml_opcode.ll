; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_aml_opcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_aml_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ps_get_aml_opcode = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@ARGP_NAMESTRING = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Found unknown opcode %X at AML address %p offset %X, ignoring\00", align 1
@AE_CTRL_PARSE_CONTINUE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_walk_state*)* @acpi_ps_get_aml_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ps_get_aml_opcode(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %4 = load i32, i32* @ps_get_aml_opcode, align 4
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_walk_state* %5)
  %7 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ACPI_PTR_DIFF(i32 %10, i32 %14)
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %16, i32 0, i32 4
  store i64 %15, i64* %17, align 8
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 3
  %20 = call i32 @acpi_ps_peek_opcode(%struct.TYPE_3__* %19)
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_4__* @acpi_ps_get_opcode_info(i32 %25)
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 0
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %30 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %67 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %41
  ]

34:                                               ; preds = %1, %1
  %35 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ARGP_NAMESTRING, align 4
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %84

41:                                               ; preds = %1
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ACPI_ERROR(i32 %53)
  %55 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ACPI_DUMP_BUFFER(i32 %58, i32 128)
  %60 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %61 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @AE_CTRL_PARSE_CONTINUE, align 4
  %66 = call i32 @return_ACPI_STATUS(i32 %65)
  br label %67

67:                                               ; preds = %1, %41
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @acpi_ps_get_opcode_size(i32 %70)
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %78 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %67, %34
  %85 = load i32, i32* @AE_OK, align 4
  %86 = call i32 @return_ACPI_STATUS(i32 %85)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @acpi_ps_peek_opcode(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_4__* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DUMP_BUFFER(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ps_get_opcode_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
