; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_drv_acpi_handle_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_drv_acpi_handle_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TPACPI_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"trying to locate ACPI handle for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Found ACPI handle %s for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ACPI handle for %s not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32**, i32*, i8**, i32, i8**)* @drv_acpi_handle_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_acpi_handle_init(i8* %0, i32** %1, i32* %2, i8** %3, i32 %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @vdbg_printk(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %47, %6
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = call i32 @acpi_get_handle(i32* %23, i8* %28, i32** %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %22
  %35 = load i8**, i8*** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %12, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %42 = load i8**, i8*** %12, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @dbg_printk(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %43, i8* %44)
  br label %55

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load i32, i32* @TPACPI_DBG_INIT, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @vdbg_printk(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32**, i32*** %8, align 8
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %50, %34
  ret void
}

declare dso_local i32 @vdbg_printk(i32, i8*, i8*) #1

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @dbg_printk(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
