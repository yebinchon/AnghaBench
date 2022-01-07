; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_mask_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_mask_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DHKN\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@EIO = common dso_local global i32 0, align 4
@hotkey_acpi_mask = common dso_local global i32 0, align 4
@hotkey_all_mask = common dso_local global i32 0, align 4
@hotkey_source_mask = common dso_local global i32 0, align 4
@hotkey_user_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hotkey_mask_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotkey_mask_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @hkey_handle, align 4
  %7 = call i32 @acpi_evalf(i32 %6, i32* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %22

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @hotkey_acpi_mask, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @hotkey_all_mask, align 4
  store i32 %15, i32* @hotkey_acpi_mask, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* @hotkey_acpi_mask, align 4
  %18 = load i32, i32* @hotkey_source_mask, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @hotkey_user_mask, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @hotkey_user_mask, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %16, %9
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
