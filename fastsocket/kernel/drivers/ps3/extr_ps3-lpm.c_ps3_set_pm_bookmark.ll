; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-lpm.c_ps3_set_pm_bookmark.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-lpm.c_ps3_set_pm_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS3_PM_BOOKMARK_TAG_KERNEL = common dso_local global i32 0, align 4
@PS3_PM_BOOKMARK_TAG_MASK_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps3_set_pm_bookmark(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @get_tb()
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, 4294967295
  %11 = load i32, i32* @PS3_PM_BOOKMARK_TAG_KERNEL, align 4
  %12 = sext i32 %11 to i64
  %13 = or i64 %10, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 56
  %17 = load i32, i32* @PS3_PM_BOOKMARK_TAG_MASK_LO, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 48
  %21 = or i32 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 32
  %24 = or i32 %21, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ps3_set_bookmark(i32 %27)
  ret void
}

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @ps3_set_bookmark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
