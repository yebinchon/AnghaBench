; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxface.c_acpi_install_fixed_event_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxface.c_acpi_install_fixed_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@ACPI_EVENT_MAX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@acpi_gbl_fixed_event_handlers = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not enable fixed event %X\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Enabled fixed event %X, Handler=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_install_fixed_event_handler(i64 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32*, i8*)* @acpi_install_fixed_event_handler)
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ACPI_EVENT_MAX, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %18 = call i32 @acpi_ut_acquire_mutex(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_handlers, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* null, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %33, i32* %8, align 4
  br label %78

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_handlers, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* %35, i32** %39, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_handlers, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* %41, i32** %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @acpi_clear_event(i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @ACPI_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %34
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @acpi_enable_event(i64 %52, i32 0)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %34
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load i32, i32* @AE_INFO, align 4
  %60 = load i64, i64* %5, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @ACPI_WARNING(i32 %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_handlers, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_fixed_event_handlers, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %77

71:                                               ; preds = %54
  %72 = load i32, i32* @ACPI_DB_INFO, align 4
  %73 = load i64, i64* %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = ptrtoint i32* %74 to i32
  %76 = call i32 @ACPI_DEBUG_PRINT(i32 %75)
  br label %77

77:                                               ; preds = %71, %58
  br label %78

78:                                               ; preds = %77, %32
  %79 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %80 = call i32 @acpi_ut_release_mutex(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i64, i32*, i8*)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_clear_event(i64) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_enable_event(i64, i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
