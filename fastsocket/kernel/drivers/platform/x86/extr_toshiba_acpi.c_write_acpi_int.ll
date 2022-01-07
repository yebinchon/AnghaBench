; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_acpi_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_write_acpi_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { %union.acpi_object*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @write_acpi_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_acpi_int(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_object_list, align 8
  %6 = alloca [1 x %union.acpi_object], align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %6, i64 0, i64 0
  %9 = call i32 @ARRAY_SIZE(%union.acpi_object* %8)
  %10 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %6, i64 0, i64 0
  %12 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 0
  store %union.acpi_object* %11, %union.acpi_object** %12, align 8
  %13 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %14 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %6, i64 0, i64 0
  %15 = bitcast %union.acpi_object* %14 to i32*
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [1 x %union.acpi_object], [1 x %union.acpi_object]* %6, i64 0, i64 0
  %18 = bitcast %union.acpi_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @acpi_evaluate_object(i32* null, i8* %20, %struct.acpi_object_list* %5, i32* null)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @AE_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @ARRAY_SIZE(%union.acpi_object*) #1

declare dso_local i64 @acpi_evaluate_object(i32*, i8*, %struct.acpi_object_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
