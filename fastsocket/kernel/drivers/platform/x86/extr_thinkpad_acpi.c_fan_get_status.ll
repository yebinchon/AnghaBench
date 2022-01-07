; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_fan_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fan_status_access_mode = common dso_local global i32 0, align 4
@gfan_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@EIO = common dso_local global i32 0, align 4
@fan_status_offset = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fan_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_status(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @fan_status_access_mode, align 4
  switch i32 %5, label %47 [
    i32 129, label %6
    i32 128, label %26
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @gfan_handle, align 4
  %8 = call i32 @acpi_evalf(i32 %7, i32* %4, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @unlikely(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %6
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @likely(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 7
  %24 = load i32*, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %50

26:                                               ; preds = %1
  %27 = load i32, i32* @fan_status_offset, align 4
  %28 = call i32 @acpi_ec_read(i32 %27, i32* %4)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @unlikely(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @likely(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @fan_quirk1_handle(i32* %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %50

47:                                               ; preds = %1
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %46, %25
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %47, %34, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i32*, i8*) #1

declare dso_local i32 @likely(i32*) #1

declare dso_local i32 @acpi_ec_read(i32, i32*) #1

declare dso_local i32 @fan_quirk1_handle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
