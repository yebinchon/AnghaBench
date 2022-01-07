; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_opens_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_opens_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ns_opens_scope = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid Object Type %X\00", align 1
@ACPI_NS_NORMAL = common dso_local global i32 0, align 4
@acpi_gbl_ns_properties = common dso_local global i64* null, align 8
@ACPI_NS_NEWSCOPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_opens_scope(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i32, i32* @ns_opens_scope, align 4
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @acpi_ut_get_type_name(i64 %5)
  %7 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %4, i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @acpi_ut_valid_object_type(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @AE_INFO, align 4
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ACPI_WARNING(i32 %14)
  %16 = load i32, i32* @ACPI_NS_NORMAL, align 4
  %17 = call i32 @return_UINT32(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load i64*, i64** @acpi_gbl_ns_properties, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @ACPI_NS_NEWSCOPE, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @return_UINT32(i32 %25)
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i64) #1

declare dso_local i32 @acpi_ut_valid_object_type(i64) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @return_UINT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
