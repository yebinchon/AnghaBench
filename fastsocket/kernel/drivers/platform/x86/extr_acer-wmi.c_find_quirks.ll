; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_find_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_find_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@force_series = common dso_local global i32 0, align 4
@acer_quirks = common dso_local global i32 0, align 4
@quirk_acer_travelmate_2490 = common dso_local global i32 0, align 4
@quirks = common dso_local global i32* null, align 8
@quirk_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_quirks() #0 {
  %1 = load i32, i32* @force_series, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @acer_quirks, align 4
  %5 = call i32 @dmi_check_system(i32 %4)
  br label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @force_series, align 4
  %8 = icmp eq i32 %7, 2490
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32* @quirk_acer_travelmate_2490, i32** @quirks, align 8
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %10, %3
  %12 = load i32*, i32** @quirks, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32* @quirk_unknown, i32** @quirks, align 8
  br label %15

15:                                               ; preds = %14, %11
  %16 = call i32 (...) @set_quirks()
  ret void
}

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @set_quirks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
