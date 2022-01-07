; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ac.c_acpi_ac_get_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ac.c_acpi_ac_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PSR\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error reading AC Adapter state\00", align 1
@ACPI_AC_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ac*)* @acpi_ac_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ac_get_state(%struct.acpi_ac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_ac*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_ac* %0, %struct.acpi_ac** %3, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.acpi_ac*, %struct.acpi_ac** %3, align 8
  %7 = icmp ne %struct.acpi_ac* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.acpi_ac*, %struct.acpi_ac** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.acpi_ac*, %struct.acpi_ac** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %17, i32 0, i32 0
  %19 = call i32 @acpi_evaluate_integer(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  %27 = load i32, i32* @ACPI_AC_STATUS_UNKNOWN, align 4
  %28 = load %struct.acpi_ac*, %struct.acpi_ac** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_ac, %struct.acpi_ac* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
