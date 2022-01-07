; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_ost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_pad.c_acpi_pad_ost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_AGGREGATOR_NOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_OST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @acpi_pad_ost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pad_ost(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %union.acpi_object], align 16
  %8 = alloca %struct.acpi_object_list, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast [3 x %union.acpi_object]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 48, i1 false)
  %10 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  %11 = bitcast %union.acpi_object* %10 to i32*
  %12 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %12, i32* %11, align 16
  %13 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %10, i64 1
  %14 = bitcast %union.acpi_object* %13 to i32*
  %15 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %13, i64 1
  %17 = bitcast %union.acpi_object* %16 to i32*
  %18 = load i32, i32* @ACPI_TYPE_BUFFER, align 4
  store i32 %18, i32* %17, align 16
  %19 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 0
  store i32 3, i32* %19, align 8
  %20 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %8, i32 0, i32 1
  %21 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  store %union.acpi_object* %21, %union.acpi_object** %20, align 8
  %22 = load i32, i32* @ACPI_PROCESSOR_AGGREGATOR_NOTIFY, align 4
  %23 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 0
  %24 = bitcast %union.acpi_object* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 16
  %26 = load i32, i32* %5, align 4
  %27 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 1
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 16
  %30 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 2
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 4, i32* %32, align 16
  %33 = bitcast i32* %6 to i8*
  %34 = getelementptr inbounds [3 x %union.acpi_object], [3 x %union.acpi_object]* %7, i64 0, i64 2
  %35 = bitcast %union.acpi_object* %34 to %struct.TYPE_3__*
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @acpi_evaluate_object(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %8, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
