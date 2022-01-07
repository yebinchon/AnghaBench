; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_system.c_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_gpes = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid GPE 0x%x\0A\00", align 1
@ACPI_NOT_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*)* @get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_status(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @num_gpes, align 8
  %10 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %11 = add nsw i64 %9, %10
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %51

14:                                               ; preds = %3
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @num_gpes, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @acpi_get_gpe_device(i64 %19, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load i32, i32* @AE_NOT_FOUND, align 4
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @ACPI_EXCEPTION(i32 %28)
  br label %51

30:                                               ; preds = %18
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @ACPI_NOT_ISR, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @acpi_get_gpe_status(i32 %32, i64 %33, i32 %34, i32* %35)
  store i32 %36, i32* %7, align 4
  br label %50

37:                                               ; preds = %14
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @num_gpes, align 8
  %40 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @num_gpes, align 8
  %46 = sub nsw i64 %44, %45
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @acpi_get_event_status(i64 %46, i32* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %24, %13
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @acpi_get_gpe_device(i64, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_get_gpe_status(i32, i64, i32, i32*) #1

declare dso_local i32 @acpi_get_event_status(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
