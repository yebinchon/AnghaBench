; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-acpi.c_ide_acpi_push_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-acpi.c_ide_acpi_push_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.ide_acpi_drive_link, %struct.ide_acpi_drive_link }
%struct.ide_acpi_drive_link = type { i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@ATA_ID_WORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_STM\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Run _STM error: status = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"_STM status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_acpi_push_timing(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_object_list, align 8
  %5 = alloca [3 x %union.acpi_object], align 16
  %6 = alloca %struct.ide_acpi_drive_link*, align 8
  %7 = alloca %struct.ide_acpi_drive_link*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  store %struct.ide_acpi_drive_link* %11, %struct.ide_acpi_drive_link** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store %struct.ide_acpi_drive_link* %15, %struct.ide_acpi_drive_link** %7, align 8
  %16 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %4, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %4, i32 0, i32 1
  store %union.acpi_object* %17, %union.acpi_object** %18, align 8
  %19 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %20 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to i8**
  store i8* %19, i8** %21, align 16
  %22 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 0
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 16
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 0
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32* %28, i32** %31, align 8
  %32 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %33 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 1
  %34 = bitcast %union.acpi_object* %33 to i8**
  store i8* %32, i8** %34, align 16
  %35 = load i32, i32* @ATA_ID_WORDS, align 4
  %36 = mul nsw i32 %35, 2
  %37 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 1
  %38 = bitcast %union.acpi_object* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 16
  %40 = load %struct.ide_acpi_drive_link*, %struct.ide_acpi_drive_link** %6, align 8
  %41 = getelementptr inbounds %struct.ide_acpi_drive_link, %struct.ide_acpi_drive_link* %40, i32 0, i32 0
  %42 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 1
  %43 = bitcast %union.acpi_object* %42 to %struct.TYPE_5__*
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32* %41, i32** %44, align 8
  %45 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %46 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 2
  %47 = bitcast %union.acpi_object* %46 to i8**
  store i8* %45, i8** %47, align 16
  %48 = load i32, i32* @ATA_ID_WORDS, align 4
  %49 = mul nsw i32 %48, 2
  %50 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 2
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 16
  %53 = load %struct.ide_acpi_drive_link*, %struct.ide_acpi_drive_link** %7, align 8
  %54 = getelementptr inbounds %struct.ide_acpi_drive_link, %struct.ide_acpi_drive_link* %53, i32 0, i32 0
  %55 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %5, i64 0, i64 2
  %56 = bitcast %union.acpi_object* %55 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32* %54, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @acpi_evaluate_object(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %4, i32* null)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %1
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @DEBPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %1
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @DEBPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  ret void
}

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DEBPRINT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
