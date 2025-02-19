; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_ejd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_ejd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_EJD\00", align 1
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_get_ejd(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %union.acpi_object*
  store %union.acpi_object* %13, %union.acpi_object** %10, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @acpi_get_handle(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @acpi_evaluate_object(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %8)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @ACPI_SUCCESS(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %31 = load %union.acpi_object*, %union.acpi_object** %30, align 8
  store %union.acpi_object* %31, %union.acpi_object** %9, align 8
  %32 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %33 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %34 = bitcast %union.acpi_object* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @acpi_get_handle(i32 %32, i8* %36, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %40 = load %union.acpi_object*, %union.acpi_object** %39, align 8
  %41 = call i32 @kfree(%union.acpi_object* %40)
  br label %42

42:                                               ; preds = %29, %23
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %21
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
