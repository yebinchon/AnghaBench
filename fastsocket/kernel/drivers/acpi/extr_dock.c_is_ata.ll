; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_is_ata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_dock.c_is_ata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_GTF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_GTM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_STM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_SDD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_ata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ata(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @acpi_get_handle(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4)
  %7 = call i64 @ACPI_SUCCESS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @acpi_get_handle(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %12 = call i64 @ACPI_SUCCESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @acpi_get_handle(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %17 = call i64 @ACPI_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @acpi_get_handle(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %9, %1
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
