; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_hpet.c_hpet_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpet_address = common dso_local global i32 0, align 4
@hpet_virt_address = common dso_local global i32 0, align 4
@HPET_CFG = common dso_local global i32 0, align 4
@hpet_legacy_int_enabled = common dso_local global i64 0, align 8
@HPET_CFG_LEGACY = common dso_local global i64 0, align 8
@HPET_CFG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_disable() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (...) @is_hpet_capable()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @hpet_address, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @hpet_virt_address, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %4, %0
  br label %29

11:                                               ; preds = %7
  %12 = load i32, i32* @HPET_CFG, align 4
  %13 = call i64 @hpet_readl(i32 %12)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* @hpet_legacy_int_enabled, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i64, i64* @HPET_CFG_LEGACY, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %1, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %1, align 8
  store i64 0, i64* @hpet_legacy_int_enabled, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i64, i64* @HPET_CFG_ENABLE, align 8
  %23 = xor i64 %22, -1
  %24 = load i64, i64* %1, align 8
  %25 = and i64 %24, %23
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i32, i32* @HPET_CFG, align 4
  %28 = call i32 @hpet_writel(i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %10
  ret void
}

declare dso_local i32 @is_hpet_capable(...) #1

declare dso_local i64 @hpet_readl(i32) #1

declare dso_local i32 @hpet_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
