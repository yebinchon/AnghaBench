; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_find_mailled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_find_mailled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.wmab_args = type { i32, i64, i64, i64 }
%struct.wmab_ret = type { i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@ACER_CAP_MAILLED = common dso_local global i32 0, align 4
@interface = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AMW0_find_mailled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_find_mailled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wmab_args, align 8
  %3 = alloca %struct.wmab_ret, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = load i32, i32* @AE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 0
  store i32 134, i32* %13, align 8
  %14 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %2, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = call i32 @wmab_execute(%struct.wmab_args* %2, %struct.acpi_buffer* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %1, align 4
  br label %68

23:                                               ; preds = %0
  %24 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %union.acpi_object*
  store %union.acpi_object* %26, %union.acpi_object** %6, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %31 = bitcast %union.acpi_object* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %37 = bitcast %union.acpi_object* %36 to %struct.TYPE_3__*
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %44 = bitcast %union.acpi_object* %43 to %struct.TYPE_3__*
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.wmab_ret*
  %48 = bitcast %struct.wmab_ret* %3 to i8*
  %49 = bitcast %struct.wmab_ret* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  br label %52

50:                                               ; preds = %35, %29, %23
  %51 = load i32, i32* @AE_ERROR, align 4
  store i32 %51, i32* %1, align 4
  br label %68

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.wmab_ret, %struct.wmab_ret* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @kfree(i64 %65)
  %67 = load i32, i32* @AE_OK, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %63, %50, %21
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @wmab_execute(%struct.wmab_args*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
