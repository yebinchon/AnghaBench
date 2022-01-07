; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_eobject_to_iobject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_eobject_to_iobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { i64 }
%union.acpi_operand_object = type { i32 }

@ut_copy_eobject_to_iobject = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_copy_eobject_to_iobject(%union.acpi_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca i32, align 4
  store %union.acpi_object* %0, %union.acpi_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %7 = load i32, i32* @ut_copy_eobject_to_iobject, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %10 = bitcast %union.acpi_object* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %16 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %17 = call i32 @acpi_ut_copy_epackage_to_ipackage(%union.acpi_object* %15, %union.acpi_operand_object** %16)
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %20 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %21 = call i32 @acpi_ut_copy_esimple_to_isimple(%union.acpi_object* %19, %union.acpi_operand_object** %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_copy_epackage_to_ipackage(%union.acpi_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ut_copy_esimple_to_isimple(%union.acpi_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
