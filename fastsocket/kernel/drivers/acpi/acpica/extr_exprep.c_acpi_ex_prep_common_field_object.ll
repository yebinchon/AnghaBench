; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exprep.c_acpi_ex_prep_common_field_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exprep.c_acpi_ex_prep_common_field_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ex_prep_common_field_object = common dso_local global i32 0, align 4
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @ex_prep_common_field_object, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load i8*, i8** %8, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %19 = bitcast %union.acpi_operand_object* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i8* %25, i8** %28, align 8
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @acpi_ex_decode_field_access(%union.acpi_operand_object* %29, i8* %30, i8** %13)
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %5
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @ACPI_DIV_8(i8* %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i8* %44, i8** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @ACPI_ROUND_BITS_DOWN_TO_BYTES(i8* %48)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i64 @ACPI_ROUND_DOWN(i8* %50, i8* %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @ACPI_MUL_8(i8* %61)
  %63 = ptrtoint i8* %57 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* @AE_OK, align 4
  %71 = call i32 @return_ACPI_STATUS(i32 %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i8* @acpi_ex_decode_field_access(%union.acpi_operand_object*, i8*, i8**) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_DIV_8(i8*) #1

declare dso_local i8* @ACPI_ROUND_BITS_DOWN_TO_BYTES(i8*) #1

declare dso_local i64 @ACPI_ROUND_DOWN(i8*, i8*) #1

declare dso_local i8* @ACPI_MUL_8(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
