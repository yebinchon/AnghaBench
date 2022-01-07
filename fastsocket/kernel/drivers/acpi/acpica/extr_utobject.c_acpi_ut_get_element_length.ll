; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_get_element_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utobject.c_acpi_ut_get_element_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { i32 }
%union.acpi_generic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.acpi_pkg_info = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ut_get_element_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_get_element_length(i32 %0, %union.acpi_operand_object* %1, %union.acpi_generic_state* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_pkg_info*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_generic_state* %2, %union.acpi_generic_state** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.acpi_pkg_info*
  store %struct.acpi_pkg_info* %15, %struct.acpi_pkg_info** %11, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %39 [
    i32 128, label %17
    i32 129, label %31
  ]

17:                                               ; preds = %4
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %19 = call i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object* %18, i32* %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %43

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %11, align 8
  %28 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %41

31:                                               ; preds = %4
  %32 = load %struct.acpi_pkg_info*, %struct.acpi_pkg_info** %11, align 8
  %33 = getelementptr inbounds %struct.acpi_pkg_info, %struct.acpi_pkg_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %37 = bitcast %union.acpi_generic_state* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %31, %25
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39, %23
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @acpi_ut_get_simple_object_size(%union.acpi_operand_object*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
